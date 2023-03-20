// ignore_for_file: avoid_unnecessary_containers, unnecessary_const, unnecessary_brace_in_string_interps, unnecessary_string_interpolations
//import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  return runApp(MaterialApp(
    home: const Calculation(),
  ));
}

class Calculation extends StatefulWidget {
  const Calculation({super.key});

  @override
  State<Calculation> createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  double result = 0.0;
  String s = '';
  double z = 0.0;
  double x = 0.0;
  String opp = '';
  String y = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                '$y',
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    s = '';
                    result = 0.0;
                    x = 0.0;
                    z = 0.0;
                    opp = '';
                    y = '';
                  },
                  child: const Text('AC'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    s = '${s}1';
                  },
                  child: const Text('1'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    s = '${s}4';
                  },
                  child: const Text('4'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    s = '${s}7';
                  },
                  child: const Text('7'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    s = '${s}0';
                  },
                  child: const Text('0'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    z = double.parse(s);
                    s = '';
                    opp = '+';
                  },
                  child: const Text('+'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    s = '${s}2';
                  },
                  child: const Text('2'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    s = '${s}5';
                  },
                  child: const Text('5'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    s = '${s}8';
                  },
                  child: const Text('8'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    s = '${s}.';
                  },
                  child: const Text('.'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    z = double.parse(s);
                    s = '';
                    opp = '-';
                  },
                  child: const Text('-'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    s = '${s}3';
                  },
                  child: const Text('3'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    s = '${s}6';
                  },
                  child: const Text('6'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    s = '${s}9';
                  },
                  child: const Text('9'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    z = double.parse(s);
                    s = '';
                    opp = '%';
                  },
                  child: const Text('%'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    z = double.parse(s);
                    s = '';
                    opp = '*';
                  },
                  child: const Text('*'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    z = double.parse(s);
                    s = '';
                    opp = '/';
                  },
                  child: const Text('/'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.backspace,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    x = double.parse(s);
                    switch (opp) {
                      case '+':
                        {
                          result = z + x;
                        }
                        break;
                      case '-':
                        {
                          result = z - x;
                        }
                        break;
                      case '*':
                        {
                          result = z * x;
                        }
                        break;
                      case '/':
                        {
                          result = z / x;
                        }
                        break;
                      case '%':
                        {
                          result = z % x;
                        }
                        break;
                    }

                    s = result.toString();
                    
                    print(result);

                    setState(() {
                      y = result.toString();
                    });
                  },
                  child: const Text('='),
                ),
              ),
              /* ignore: sized_box_for_whitespace
              Container(
                // ignore: sort_child_properties_last
                child: TextField(
                  controller: TextEditingController(text: '$result'),
                  // ignore: sort_child_properties_last
                  decoration: const InputDecoration(
                    hintText: '',
                    border: OutlineInputBorder(),
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.2,
              ),*/

              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    s = '${s},';
                  },
                  child: const Text(','),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
