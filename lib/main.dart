import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double sliderValue = 0;
  double redvalue = 0;
  double greenvalue = 0;
  double bluevalue = 0;
  double sizeText = 10;
  int red = 100;
  bool tach = false;
  bool bold = false;
  List<TextDecoration> tachtexto = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Slider"),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                      color: Color.fromRGBO(redvalue.toInt(),
                          greenvalue.toInt(), bluevalue.toInt(), 1),
                      fontSize: sizeText.toDouble(),
                      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
                      decoration: TextDecoration.combine(
                        tachtexto,
                      ),
                    ),
                    //redvalue.toStringAsFixed(100)),
                  ),
                  Slider(
                      value: redvalue,
                      min: 0,
                      max: 255,
                      onChanged: (valor1) {
                        redvalue = valor1;
                        setState(() {});
                      }),
                  Slider(
                      value: greenvalue,
                      min: 0,
                      max: 255,
                      onChanged: (valor2) {
                        greenvalue = valor2;
                        setState(() {});
                      }),
                  Slider(
                      value: bluevalue,
                      min: 0,
                      max: 255,
                      onChanged: (valor3) {
                        bluevalue = valor3;
                        setState(() {});
                      }),
                  Slider(
                      value: sizeText,
                      min: 10.0,
                      max: 20.0,
                      onChanged: (valor4) {
                        sizeText = valor4;
                        setState(() {});
                      }),
                  CheckboxListTile(
                    value: tach,
                    title: Text("Tachar"),
                    onChanged: (valor5) {
                      tach = valor5!;

                      tachtexto.add(TextDecoration.lineThrough);
                      setState(() {});
                    },
                  ),
                  CheckboxListTile(
                    value: tach,
                    title: Text("Negrita"),
                    onChanged: (valor5) {
                      bold = valor5!;

                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
