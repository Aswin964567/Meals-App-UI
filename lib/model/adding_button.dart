import 'package:flutter/material.dart';

class AddingButton extends StatefulWidget {
  final Color containerColor;
  final Color buttonColor;
  const AddingButton(
      {super.key, required this.buttonColor, required this.containerColor});

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
    return Container(
      color: widget.containerColor,
      child: Row(
        children: [
          InkWell(
            onTap: _decrementCounter,
            child: SizedBox(
              height: 20,
              width: 20,
              // decoration: BoxDecoration(color: Color(0xffd9d9d9)),
              child: Center(
                  child: Text(
                '-',
                style: TextStyle(color: widget.buttonColor),
              )),
            ),
          ),
          SizedBox(
            height: 20,
            width: 20,
            child: Center(
              child: Text(
                '$_counter',
                style: TextStyle(color: widget.buttonColor),
              ),
            ),
          ),
          InkWell(
            onTap: _incrementCounter,
            child: SizedBox(
              height: 20,
              width: 20,
              // decoration: const BoxDecoration(color: Color(0xffd9d9d9)),
              child: Center(
                child: Text(
                  '+',
                  style: TextStyle(color: widget.buttonColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
