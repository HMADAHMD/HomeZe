import 'package:flutter/material.dart';
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('Hi there');
          },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Ink(
            decoration: BoxDecoration(
                gradient:
                    const LinearGradient(colors: [Colors.red, Colors.yellow]),
                borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: 300,
              height: 100,
              alignment: Alignment.center,
              child: const Text(
                'Button',
                style:
                    const TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ),
      ),
    );
}