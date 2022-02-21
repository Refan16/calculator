import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  int hasil = 0, input1 = 0, input2 = 0;

  perkalian() {
    setState(() {
      input1 = int.parse(text1.text);
      input2 = int.parse(text2.text);
      hasil = input1 * input2;
    });
  }

  pembagian() {
    setState(() {
      input1 = int.parse(text1.text);
      input2 = int.parse(text2.text);
      hasil = input1 ~/ input2;
    });
  }

  pertambahan() {
    setState(() {
      input1 = int.parse(text1.text);
      input2 = int.parse(text2.text);
      hasil = input1 + input2;
    });
  }

  pengurangan() {
    setState(() {
      input1 = int.parse(text1.text);
      input2 = int.parse(text2.text);
      hasil = input1 - input2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: (Text("Calculator")),
          ),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text("Hasil Perhitungan : $hasil",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: text1,
              decoration: InputDecoration(
                labelText: "Input Pertama",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              controller: text2,
              decoration: InputDecoration(
                labelText: "Input Kedua",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      perkalian();
                      text1.clear();
                      text2.clear();
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          width: 100,
                        ),
                        Text("X"),
                      ],
                    )),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      pembagian();
                      text1.clear();
                      text2.clear();
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          width: 100,
                        ),
                        Text("/"),
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      pertambahan();
                      text1.clear();
                      text2.clear();
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          width: 100,
                        ),
                        Text("+"),
                      ],
                    )),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      pengurangan();
                      text1.clear();
                      text2.clear();
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          width: 100,
                        ),
                        Text("-"),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
