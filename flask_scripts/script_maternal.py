from flask_sqlalchemy import SQLAlchemy
import sqlite3
import numpy as np
from flask import Flask, request, jsonify, render_template
import pickle

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///C:/Users/DELL/Desktop/Ayushi/College/Semester-2/Reign 2023/maternalhealthcare-prediction/maternaldb.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class Prediction(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    Age = db.Column(db.Integer)
    SystolicBP = db.Column(db.Integer)
    DiastolicBP = db.Column(db.Integer)
    BS = db.Column(db.Integer)
    BodyTemp = db.Column(db.Integer)
    HeartRate = db.Column(db.Integer)
    predicted_value = db.Column(db.Integer)

    def __init__(self, Age, SystolicBP, DiastolicBP, BS, BodyTemp, HeartRate, predicted_value):
        self.Age = Age
        self.SystolicBP = SystolicBP
        self.DiastolicBP = DiastolicBP
        self.BS = BS
        self.BodyTemp = BodyTemp
        self.HeartRate = HeartRate
        self.predicted_value = predicted_value

with open('maternal_healthcare.pkl', 'rb') as f:
    model = pickle.load(f)

@app.route('/')
def home():
    return render_template('index_maternal.html')

def ValuePredictor(to_predict_list):
    to_predict = np.array(to_predict_list).reshape(1, 6)
    loaded_model = pickle.load(open("maternal_healthcare.pkl", "rb"))
    result = loaded_model.predict(to_predict)
    if result[0] == 0:
        prediction_statement = "Less risk intensity level during pregnancy"
    else:
        prediction_statement = "High risk intensity level during pregnancy"
    # Create dictionary with input feature names and predicted values
    feature_names = ['Age', 'SystolicBP', 'DiastolicBP', 'BS', 'BodyTemp', 'HeartRate']
    prediction_dict = {}
    for i in range(len(feature_names)):
        prediction_dict[feature_names[i]] = to_predict_list[i]
    prediction_dict['predicted_value'] = prediction_statement
    return prediction_statement

@app.route('/result', methods = ['POST'])
def result():
    if request.method == 'POST':
        to_predict_dict = request.form.to_dict()
        Age = int(to_predict_dict['Age'])
        SystolicBP = int(to_predict_dict['SystolicBP'])
        DiastolicBP = int(to_predict_dict['DiastolicBP'])
        BS = int(to_predict_dict['BS'])
        BodyTemp = int(to_predict_dict['BodyTemp'])
        HeartRate = int(to_predict_dict['HeartRate'])
        to_predict = [Age, SystolicBP, DiastolicBP, BS, BodyTemp, HeartRate]
        result = ValuePredictor(to_predict)
        prediction = Prediction(Age=Age, SystolicBP=SystolicBP, DiastolicBP=DiastolicBP, BS=BS, BodyTemp=BodyTemp, HeartRate=HeartRate, predicted_value=result)
        db.session.add(prediction)
        db.session.commit()
        return render_template("result_maternal.html", prediction = result)

