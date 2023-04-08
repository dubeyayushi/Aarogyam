from flask_sqlalchemy import SQLAlchemy
import sqlite3
import numpy as np
from flask import Flask, request, jsonify, render_template
import pickle

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///C:/Users/DELL/Desktop/Ayushi/College/Semester-2/Reign 2023/kidneystone-prediction/kidneystonedb.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class Prediction(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    gravity = db.Column(db.Float)
    ph = db.Column(db.Float)
    osmo = db.Column(db.Integer)
    cond = db.Column(db.Float)
    urea = db.Column(db.Integer)
    calc = db.Column(db.Float)
    predicted_value = db.Column(db.Integer)

    def __init__(self, gravity, ph, osmo, cond, urea, calc, predicted_value):
        self.gravity = gravity
        self.ph = ph
        self.osmo = osmo
        self.cond = cond
        self.urea = urea
        self.calc = calc
        self.predicted_value = predicted_value


with open('kidneystone.pkl', 'rb') as f:
    model = pickle.load(f)

@app.route('/')
def home():
    return render_template('index_kidneystone.html')

def ValuePredictor(to_predict_list):
    to_predict = np.array(to_predict_list).reshape(1, 6)
    loaded_model = pickle.load(open("kidneystone.pkl", "rb"))
    result = loaded_model.predict(to_predict)
    if result[0] == 0:
        prediction_statement = "Less chances of kidney stone"
    else:
        prediction_statement = "High chances of kidney stone"
    # Create dictionary with input feature names and predicted values
    feature_names = ['gravity', 'ph', 'osmo', 'cond', 'urea', 'calc']
    prediction_dict = {}
    for i in range(len(feature_names)):
        prediction_dict[feature_names[i]] = to_predict_list[i]
    prediction_dict['predicted_value'] = prediction_statement
    return prediction_statement

@app.route('/result', methods = ['POST'])
def result():
    if request.method == 'POST':
        to_predict_dict = request.form.to_dict()
        gravity = int(to_predict_dict['gravity'])
        ph = int(to_predict_dict['ph'])
        osmo = int(to_predict_dict['osmo'])
        cond = int(to_predict_dict['cond'])
        urea = int(to_predict_dict['urea'])
        calc = int(to_predict_dict['calc'])
        to_predict = [gravity, ph, osmo, cond, urea, calc]
        result = ValuePredictor(to_predict)
        prediction = Prediction(gravity=gravity, ph=ph, osmo=osmo, cond=cond, urea=urea, calc=calc, predicted_value=result)
        db.session.add(prediction)
        db.session.commit()
        return render_template("result_kidneystone.html", prediction = result)

