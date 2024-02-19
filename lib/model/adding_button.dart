import 'package:flutter/material.dart';

class AddingButton extends StatefulWidget {
  const AddingButton({super.key});

  @override
  State<AddingButton> createState() => _AddingButtonState();
}

class _AddingButtonState extends State<AddingButton> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: _decrementCounter,
            child: Container(
              height: 20,
              width: 20,
              // decoration: BoxDecoration(color: Color(0xffd9d9d9)),
              child: Center(child: Text('-')),
            )),
        Container(
          height: 20,
          width: 20,
          child: Center(
            child: Text('$_counter'),
          ),
        ),
        InkWell(
            onTap: _incrementCounter,
            child: Container(
              height: 20,
              width: 20,
              // decoration: const BoxDecoration(color: Color(0xffd9d9d9)),
              child: const Center(
                child: Text('+'),
              ),
            )),
      ],
    );
  }
}
