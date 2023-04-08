from flask_sqlalchemy import SQLAlchemy
import sqlite3
import numpy as np
from flask import Flask, request, jsonify, render_template
import pickle

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///C:/Users/DELL/Desktop/Ayushi/College/Semester-2/Reign 2023/lungcancer-prediction/lungcancerdb.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class Prediction(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    Age = db.Column(db.Integer)
    Gender = db.Column(db.Integer)
    Air_pollution = db.Column(db.Integer)
    Alcohol_use = db.Column(db.Integer)
    Dust_allergy = db.Column(db.Integer)
    Occupational_hazards = db.Column(db.Integer)
    Genetic_risk = db.Column(db.Integer)
    Chronic_lung_disease = db.Column(db.Integer)
    Balanced_diet = db.Column(db.Integer)
    Obesity = db.Column(db.Integer)
    Smoking = db.Column(db.Integer)
    Passive_smoker = db.Column(db.Integer)
    Chest_pain = db.Column(db.Integer)
    Coughing_of_blood = db.Column(db.Integer)
    Fatigue = db.Column(db.Integer)
    Weight_loss = db.Column(db.Integer)
    Shortness_of_breath = db.Column(db.Integer)
    Wheezing = db.Column(db.Integer)
    Swallowing_difficulty = db.Column(db.Integer)
    Clubbing_of_finger_nails = db.Column(db.Integer)
    Frequent_cold = db.Column(db.Integer)
    Dry_cough = db.Column(db.Integer)
    Snoring = db.Column(db.Integer)
    predicted_value = db.Column(db.Integer)

    def __init__(self, Age, Gender, Air_pollution, Alcohol_use, Dust_allergy, Occupational_hazards, Genetic_risk, Chronic_lung_disease, Balanced_diet, Obesity, Smoking, Passive_smoker, Chest_pain, Coughing_of_blood, Fatigue, Weight_loss, Shortness_of_breath, Wheezing, Swallowing_difficulty, Clubbing_of_finger_nails, Frequent_cold, Dry_cough, Snoring, predicted_value):
        self.Age = Age
        self.Gender = Gender
        self.Air_pollution = Air_pollution
        self.Alcohol_use = Alcohol_use
        self.Dust_allergy = Dust_allergy
        self.Occupational_hazards = Occupational_hazards
        self.Genetic_risk = Genetic_risk
        self.Chronic_lung_disease = Chronic_lung_disease
        self.Balanced_diet = Balanced_diet
        self.Obesity = Obesity
        self.Smoking = Smoking
        self.Passive_smoker = Passive_smoker
        self.Chest_pain = Chest_pain
        self.Coughing_of_blood = Coughing_of_blood
        self.Fatigue = Fatigue
        self.Weight_loss = Weight_loss
        self.Shortness_of_breath = Shortness_of_breath
        self.Wheezing = Wheezing
        self.Swallowing_difficulty = Swallowing_difficulty
        self.Clubbing_of_finger_nails = Clubbing_of_finger_nails
        self.Frequent_cold = Frequent_cold
        self.Dry_cough = Dry_cough
        self.Snoring = Snoring
        self.predicted_value = predicted_value


with open('lungcancer.pkl', 'rb') as f:
    model = pickle.load(f)

@app.route('/')
def home():
    return render_template('index_lungcancer.html')

def ValuePredictor(to_predict_list):
    to_predict = np.array(to_predict_list).reshape(1, 23)
    loaded_model = pickle.load(open("lungcancer.pkl", "rb"))
    result = loaded_model.predict(to_predict)
    if result[0] == "Low":
        prediction_statement = "Less chances of lung cancer"
    elif result[0] == "Medium":
        prediction_statement = "Moderate chances of lung cancer"
    else:
        prediction_statement = "High chances of lung cancer"

    feature_names = ['Age', 'Gender', 'Air Pollution', 'Alcohol use', 'Dust Allergy', 'OccuPational Hazards', 'Genetic Risk', 'chronic Lung Disease', 'Balanced Diet', 'Obesity', 'Smoking', 'Passive Smoker', 'Chest Pain', 'Coughing of Blood', 'Fatigue', 'Weight Loss', 'Shortness of Breath', 'Wheezing', 'Swallowing Difficulty', 'Clubbing of Finger Nails', 'Frequent Cold', 'Dry Cough', 'Snoring']
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
        Gender = int(to_predict_dict['Gender'])
        Air_pollution = int(to_predict_dict['Air Pollution'])
        Alcohol_use = int(to_predict_dict['Alcohol use'])
        Dust_allergy = int(to_predict_dict['Dust Allergy'])
        Occupational_hazards = int(to_predict_dict['OccuPational Hazards'])
        Genetic_risk = int(to_predict_dict['Genetic Risk'])
        Chronic_lung_disease = int(to_predict_dict['chronic Lung Disease'])
        Balanced_diet = int(to_predict_dict['Balanced Diet'])     
        Obesity = int(to_predict_dict['Obesity'])     
        Smoking = int(to_predict_dict['Smoking'])     
        Passive_smoker = int(to_predict_dict['Passive Smoker'])     
        Chest_pain = int(to_predict_dict['Chest Pain'])     
        Coughing_of_blood = int(to_predict_dict['Coughing of Blood'])     
        Fatigue = int(to_predict_dict['Fatigue'])
        Weight_loss = int(to_predict_dict['Weight Loss'])
        Shortness_of_breath = int(to_predict_dict['Shortness of Breath'])
        Wheezing = int(to_predict_dict['Wheezing'])
        Swallowing_difficulty = int(to_predict_dict['Swallowing Difficulty'])
        Clubbing_of_finger_nails = int(to_predict_dict['Clubbing of Finger Nails'])
        Frequent_cold = int(to_predict_dict['Frequent Cold'])
        Dry_cough = int(to_predict_dict['Dry Cough'])
        Snoring = int(to_predict_dict['Snoring'])
        to_predict = [Age, Gender, Air_pollution, Alcohol_use, Dust_allergy, Occupational_hazards, Genetic_risk, Chronic_lung_disease, Balanced_diet, Obesity, Smoking, Passive_smoker, Chest_pain, Coughing_of_blood, Fatigue, Weight_loss, Shortness_of_breath, Wheezing, Swallowing_difficulty, Clubbing_of_finger_nails, Frequent_cold, Dry_cough, Snoring]
        result = ValuePredictor(to_predict)
        prediction = Prediction(Age=Age, Gender=Gender, Air_pollution=Air_pollution, Alcohol_use=Alcohol_use, Dust_allergy=Dust_allergy, Occupational_hazards=Occupational_hazards, Genetic_risk=Genetic_risk, Chronic_lung_disease=Chronic_lung_disease, Balanced_diet=Balanced_diet, Obesity=Obesity, Smoking=Smoking, Passive_smoker=Passive_smoker, Chest_pain=Chest_pain, Coughing_of_blood=Coughing_of_blood, Fatigue=Fatigue, Weight_loss=Weight_loss, Shortness_of_breath=Shortness_of_breath, Wheezing=Wheezing, Swallowing_difficulty=Swallowing_difficulty, Clubbing_of_finger_nails=Clubbing_of_finger_nails, Frequent_cold=Frequent_cold, Dry_cough=Dry_cough, Snoring=Snoring, predicted_value=result)
        db.session.add(prediction)
        db.session.commit()
        return render_template("result_lungcancer.html", prediction = result)
    
if __name__ == '__main__':
    app.run()

