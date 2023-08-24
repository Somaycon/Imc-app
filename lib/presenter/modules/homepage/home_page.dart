import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double heigthController = 0;
  double weightController = 0;
  double imcRes = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Body Mass Index'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 300,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Report your weight in Kg:',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        weightController = double.parse(value);
                        debugPrint('${weightController}');
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Report your height in cm:',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        heigthController = double.parse(value);
                        debugPrint('${heigthController}');
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          setState(() {
                            heigthController = heigthController * 0.01;
                            imcRes = weightController /
                                (heigthController * heigthController);
                            debugPrint('${imcRes}');
                          });
                        },
                        child: Text(
                          'Calc',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              '${imcRes.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
