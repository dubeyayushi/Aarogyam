from flask_sqlalchemy import SQLAlchemy
import sqlite3
import numpy as np
from flask import Flask, request, jsonify, render_template
import pickle

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///C:/Users/DELL/Desktop/Ayushi/College/Semester-2/Reign 2023/diabetes-prediction/diabetesdb.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class Prediction(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    Pregnancies = db.Column(db.Integer)
    Glucose = db.Column(db.Integer)
    BloodPressure = db.Column(db.Integer)
    SkinThickness = db.Column(db.Integer)
    Insulin = db.Column(db.Integer)
    BMI = db.Column(db.Integer)
    DiabetesPedigreeFunction = db.Column(db.Integer)
    Age = db.Column(db.Integer)
    predicted_value = db.Column(db.Integer)

    def __init__(self, Pregnancies, Glucose, BloodPressure, SkinThickness, Insulin, BMI, DiabetesPedigreeFunction, Age, predicted_value):
        self.Pregnancies = Pregnancies
        self.Glucose = Glucose
        self.BloodPressure = BloodPressure
        self.SkinThickness = SkinThickness
        self.Insulin = Insulin
        self.BMI = BMI
        self.DiabetesPedigreeFunction = DiabetesPedigreeFunction
        self.Age = Age
        self.predicted_value = predicted_value

with open('diabetes.pkl', 'rb') as f:
    model = pickle.load(f)

@app.route('/')
def home():
    return render_template('index_diabetes.html')

def ValuePredictor(to_predict_list):
    to_predict = np.array(to_predict_list).reshape(1, 8)
    loaded_model = pickle.load(open("diabetes.pkl", "rb"))
    result = loaded_model.predict(to_predict)
    if result[0] == 0:
        prediction_statement = "Less chances of diabetes"
    else:
        prediction_statement = "High chances of diabetes"
    # Create dictionary with input feature names and predicted values
    feature_names = ['Pregnancies', 'Glucose', 'BloodPressure', 'SkinThickness', 'Insulin', 'BMI', 'DiabetesPedigreeFunction', 'Age']
    prediction_dict = {}
    for i in range(len(feature_names)):
        prediction_dict[feature_names[i]] = to_predict_list[i]
    prediction_dict['predicted_value'] = prediction_statement
    return prediction_statement

@app.route('/result', methods = ['POST'])
def result():
    if request.method == 'POST':
        to_predict_dict = request.form.to_dict()
        Pregnancies = int(to_predict_dict['Pregnancies'])
        Glucose = int(to_predict_dict['Glucose'])
        BloodPressure = int(to_predict_dict['BloodPressure'])
        SkinThickness = int(to_predict_dict['SkinThickness'])
        Insulin = int(to_predict_dict['Insulin'])
        BMI = int(to_predict_dict['BMI'])
        DiabetesPedigreeFunction = int(to_predict_dict['DiabetesPedigreeFunction'])
        Age = int(to_predict_dict['Age'])
        to_predict = [Pregnancies, Glucose, BloodPressure, SkinThickness, Insulin, BMI, DiabetesPedigreeFunction, Age]
        result = ValuePredictor(to_predict)
        prediction = Prediction(Pregnancies=Pregnancies, Glucose=Glucose, BloodPressure=BloodPressure, SkinThickness=SkinThickness, Insulin=Insulin, BMI=BMI, DiabetesPedigreeFunction=DiabetesPedigreeFunction, Age=Age, predicted_value=result)
        db.session.add(prediction)
        db.session.commit()
        return render_template("result_diabetes.html", prediction = result)

