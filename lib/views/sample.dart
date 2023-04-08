import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _prediction;
  int? glucose;
  int? gender;
  int? age;
  int? hypertension;
  int? heartdisease;
  int? evermarried;
  int? worklife;
  int? residensetype;
  int? bmi;
  int? smokingstatus;


  void _runModel() async {
    // Load the model
    await Tflite.loadModel(
      model: 'assets/stroke.tflite',
    );

    // Prepare the input data as a List of List of doubles
    final inputData = Uint8List.fromList([gender ?? 0,age??0, hypertension ?? 0 ,heartdisease ?? 0,evermarried ?? 0,worklife ?? 0,residensetype ?? 0,glucose ??0,bmi??0,smokingstatus??0]);


    // Run inference on the input data
    final outputData = await Tflite.runModelOnBinary(
      binary: inputData,
    );

    // Get the predicted value from the output data
    final prediction = outputData;

    // Update the state with the predicted value
    setState(() {
      _prediction = prediction![0];
    });

    // Unload the model
    Tflite.close();
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
      title: const Text('ML Prediction'),
  ),
  body: Center(
  child:
  SingleChildScrollView(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  const Text('Enter gender:'),
  TextField(
  keyboardType: TextInputType.number,
  onChanged: (input) {
  // Update the state with input 1
  setState(() {
  gender = int.parse(input);
  });
  // Run the model
  },
  ),
  const Text('hypertension:'),
  TextField(
  keyboardType: TextInputType.number,
  onChanged: (input) {
  // Update the state with input 1
  setState(() {
  hypertension = int.parse(input);
  });
  // Run the model
  },
  ),
  const Text('Enter age:'),
  TextField(
  keyboardType: TextInputType.number,
  onChanged: (input) {
  // Update the state with input 1
  setState(() {
  age = int.parse(input);
  });
  // Run the model
  },
  ),
  const Text('Enter bmi:'),
  TextField(
  keyboardType: TextInputType.number,
  onChanged: (input) {
  // Update the state with input 1
  setState(() {
  bmi = int.parse(input);
  });
  // Run the model
  },
  ),
  const Text('Enter glucose:'),
  TextField(
  keyboardType: TextInputType.number,
  onChanged: (input) {
  // Update the state with input 1
  setState(() {
  glucose = int.parse(input);
  });
  // Run the model
  },
  ),
  const Text('Enter worklife:'),
  TextField(
  keyboardType: TextInputType.number,
  onChanged: (input) {
  // Update the state with input 1
  setState(() {
  worklife = int.parse(input);
  });
  // Run the model
  },
  ),
  const Text('Enter smoking status:'),
  TextField(
  keyboardType: TextInputType.number,
  onChanged: (input) {
  // Update the state with input 1
  setState(() {
  smokingstatus = int.parse(input);
  });
  // Run the model
  },
  ),
  const SizedBox(height: 16),
  const Text('Enter residencetype:'),
  TextField(
  keyboardType: TextInputType.number,
  onChanged: (input) {
  // Update the state with input 1
  setState(() {
  residensetype = int.parse(input);
  });
  // Run the model
  },
  ),
  const Text('Enter heartdisease:'),
  TextField(
  keyboardType: TextInputType.number,
  onChanged: (input) {
  // Update the state with input 1
  setState(() {
  heartdisease = int.parse(input);
  });
  // Run the model
  },
  ),
  const Text('Enter married:'),
  TextField(
  keyboardType: TextInputType.number,
  onChanged: (input) {
  // Update the state with input 2
  setState(() {
  evermarried = int.parse(input);
  });
  _runModel();
  },
  ),
    if (_prediction != null)
      Text(
        'Prediction: $_prediction',
      ),
  ],
  ),
  ),
  ),
  );
  }
}
  // Run the model
