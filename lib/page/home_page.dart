import 'package:bmi/modal/bmi_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double heightCurrent = 0;
  double weightCurrent = 0;
  String bmi = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BMI'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Weight(KG) ' + weightCurrent.toString()),
            Slider(
              divisions: 500,
              value: weightCurrent,
              min: 0,
              max: 500,
              label: 'Weight(KG)',
              onChanged: (double value) {
                setState(() {
                  weightCurrent = value;
                });
              },
            ),
            Text('Height(CM) ' + heightCurrent.toString()),
            Slider(
              divisions: 300,
              value: heightCurrent,
              min: 0,
              max: 300,
              label: 'Height(CM)',
              onChanged: (double value) {
                setState(() {
                  heightCurrent = value;
                });
              },
            ),
            Text(bmi),
            TextButton(
              child: const Text(
                'Calculate',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                setState(() {
                  bmi = 'BMI: ' + Bmi(weightCurrent, heightCurrent).toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
