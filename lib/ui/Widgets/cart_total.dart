import 'package:f_shopping_app/ui/pages/product_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CartTotal extends StatelessWidget {
  CartTotal({Key? key}) : super(key: key);
  //Inyección de dependencia
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    //Instacia de controllador
    Controller controller = Get.find();
    return Expanded(
      child: Center(
        child: Obx(() => Text('Total: ${controller.totalprice} usd',
                style: const TextStyle(
                fontSize: 27.0,
                color: Color.fromARGB(255, 253, 253, 253),
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400)))
      ),
    );
  }
}
