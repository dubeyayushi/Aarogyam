from flask_sqlalchemy import SQLAlchemy
import sqlite3
import numpy as np
from flask import Flask, request, jsonify, render_template
import pickle

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///C:/Users/DELL/Desktop/Ayushi/College/Semester-2/Reign 2023/stroke-prediction/strokedb.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class Prediction(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    age = db.Column(db.Integer)
    gender = db.Column(db.Integer)
    hypertension = db.Column(db.Integer)
    heart_disease = db.Column(db.Integer)
    ever_married = db.Column(db.Integer)
    work_type = db.Column(db.Integer)
    Residence_type = db.Column(db.Integer)
    avg_glucose_level = db.Column(db.Float)
    bmi = db.Column(db.Float)
    smoking_status = db.Column(db.Integer)
    predicted_value = db.Column(db.Integer)

    def __init__(self, age, gender, hypertension, heart_disease, ever_married, work_type, Residence_type, avg_glucose_level, bmi, smoking_status, predicted_value):
        self.age = age
        self.gender = gender
        self.hypertension = hypertension
        self.heart_disease = heart_disease
        self.ever_married = ever_married
        self.work_type = work_type
        self.Residence_type = Residence_type
        self.avg_glucose_level = avg_glucose_level
        self.bmi = bmi
        self.smoking_status = smoking_status
        self.predicted_value = predicted_value


with open('stroke.pkl', 'rb') as f:
    model = pickle.load(f)

@app.route('/')
def home():
    return render_template('index_stroke.html')

def ValuePredictor(to_predict_list):
    to_predict = np.array(to_predict_list).reshape(1, 10)
    loaded_model = pickle.load(open("stroke.pkl", "rb"))
    result = loaded_model.predict(to_predict)
    if result[0] == 0:
        prediction_statement = "Less chances of stroke"
    else:
        prediction_statement = "High chances of stroke"
    # Create dictionary with input feature names and predicted values
    feature_names = ['gender', 'age', 'hypertension', 'heart_disease', 'ever_married', 'work_type', 'Residence_type', 'avg_glucose_level', 'bmi', 'smoking_status']
    prediction_dict = {}
    for i in range(len(feature_names)):
        prediction_dict[feature_names[i]] = to_predict_list[i]
    prediction_dict['predicted_value'] = prediction_statement
    return prediction_statement

@app.route('/result', methods = ['POST'])
def result():
    if request.method == 'POST':
        to_predict_dict = request.form.to_dict()
        age = int(to_predict_dict['age'])
        gender = int(to_predict_dict['gender'])
        hypertension = int(to_predict_dict['hypertension'])
        heart_disease = int(to_predict_dict['heart_disease'])
        ever_married = int(to_predict_dict['ever_married'])
        work_type = int(to_predict_dict['work_type'])
        Residence_type = int(to_predict_dict['Residence_type'])
        avg_glucose_level = float(to_predict_dict['avg_glucose_level'])
        bmi = float(to_predict_dict['bmi'])
        smoking_status = int(to_predict_dict['smoking_status'])
        to_predict = [age, gender, hypertension, heart_disease, ever_married, work_type, Residence_type, avg_glucose_level, bmi, smoking_status]
        result = ValuePredictor(to_predict)
        prediction = Prediction(age=age, gender=gender, hypertension=hypertension, heart_disease=heart_disease, ever_married=ever_married, work_type=work_type, Residence_type=Residence_type, avg_glucose_level=avg_glucose_level, bmi=bmi, smoking_status=smoking_status, predicted_value=result)
        db.session.add(prediction)
        db.session.commit()
        return render_template("result_stroke.html", prediction = result)

