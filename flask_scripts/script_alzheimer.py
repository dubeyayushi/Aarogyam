from flask_sqlalchemy import SQLAlchemy
import sqlite3
import numpy as np
from flask import Flask, request, jsonify, render_template
import pickle

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///C:/Users/DELL/Desktop/Ayushi/College/Semester-2/Reign 2023/alzheimer-prediction/alzheimerdb.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class Prediction(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    gender = db.Column(db.Integer)
    Age = db.Column(db.Integer)
    EDUC = db.Column(db.Integer)
    SES = db.Column(db.Integer)
    MMSE = db.Column(db.Integer)
    CDR = db.Column(db.Integer)
    eTIV = db.Column(db.Integer)
    nWBV = db.Column(db.Integer)
    ASF = db.Column(db.Integer)
    predicted_value = db.Column(db.Integer)

    def __init__(self, gender, Age, EDUC, SES, MMSE, CDR, eTIV, nWBV, ASF, predicted_value):
        self.gender = gender
        self.Age = Age
        self.EDUC = EDUC
        self.SES = SES
        self.MMSE = MMSE
        self.CDR = CDR
        self.eTIV = eTIV
        self.nWBV = nWBV
        self.ASF = ASF
        self.predicted_value = predicted_value

with open('alzheimer.pkl', 'rb') as f:
    model = pickle.load(f)

@app.route('/')
def home():
    return render_template('index_alzheimer.html')

def ValuePredictor(to_predict_list):
    to_predict = np.array(to_predict_list).reshape(1, 9)
    loaded_model = pickle.load(open("alzheimer.pkl", "rb"))
    result = loaded_model.predict(to_predict)
    if result[0] == "Nondemented":
        prediction_statement = "Less chances of Alzheimer's"
    else:
        prediction_statement = "High chances of Alzheimer's"
    # Create dictionary with input feature names and predicted values
    feature_names = ['M/F', 'Age', 'EDUC', 'SES', 'MMSE', 'CDR', 'eTIV', 'nWBV', 'ASF']
    prediction_dict = {}
    for i in range(len(feature_names)):
        prediction_dict[feature_names[i]] = to_predict_list[i]
    prediction_dict['predicted_value'] = prediction_statement
    return prediction_statement

@app.route('/result', methods = ['POST'])
def result():
    if request.method == 'POST':
        to_predict_dict = request.form.to_dict()
        gender = int(to_predict_dict['M/F'])
        Age = int(to_predict_dict['Age'])
        EDUC = int(to_predict_dict['EDUC'])
        SES = int(to_predict_dict['SES'])
        MMSE = int(to_predict_dict['MMSE'])
        CDR = int(to_predict_dict['CDR'])
        eTIV = int(to_predict_dict['eTIV'])
        nWBV = int(to_predict_dict['nWBV'])
        ASF = int(to_predict_dict['ASF'])
        to_predict = [gender, Age, EDUC, SES, MMSE, CDR, eTIV, nWBV, ASF]
        result = ValuePredictor(to_predict)
        prediction = Prediction(gender=gender, Age=Age, EDUC=EDUC, SES=SES, MMSE=MMSE, CDR=CDR, eTIV=eTIV, nWBV=nWBV, ASF=ASF, predicted_value=result)
        db.session.add(prediction)
        db.session.commit()
        return render_template("result_alzheimer.html", prediction = result)

