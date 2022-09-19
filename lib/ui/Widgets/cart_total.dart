import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CartTotal extends StatelessWidget {
  CartTotal({Key? key}) : super(key: key);
  var contador = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text('Total: $contador usd',
                style: const TextStyle(
                fontSize: 25.0,
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
