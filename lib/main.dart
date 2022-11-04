import 'package:api_num2/apis.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _numController = TextEditingController();

  String _resultText = "Result here....";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _numController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "ENTER A NUM"),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text("click"),
                onPressed: () async {
                  final _num = _numController.text;
                  final _result = await getNumberMean(num: _num);

                  setState(() {
                     _resultText = _result.text??"No Text";
                  });

                  
                },
              ),
              Text(_resultText),
            ],
          ),
        ),
      ),
    );
  }
}
