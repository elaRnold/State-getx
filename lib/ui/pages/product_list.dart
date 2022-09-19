import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/product.dart';
import '../Widgets/banner.dart';


class Controller extends GetxController{
  var entries = <Product>[].obs;

  @override
  void onInit(){
    entries.add(Product(0, "Banana", 10));
    entries.add(Product(1, "Manzana", 20));
    entries.add(Product(2, "Pera", 5));
    entries.add(Product(3, "Repollo", 15));
    entries.add(Product(4, "Pollo", 10));
    entries.add(Product(5, "Zanahoria", 8));
    entries.add(Product(6, "Lechuga", 10));
    entries.add(Product(7, "Papa", 15));
    super.onInit();
  }

  updatecantidad(int indice) => entries[indice].quantity++;
  downdatecantidad(int indice) => (entries[indice].quantity == 0) ? entries[indice].quantity = 0 : entries[indice].quantity--;
}


class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  // final controller = Get.put(Controller);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Controller c = Get.put(Controller());
    
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [const CustomBanner(50), customAppBar()],
            ),
            Expanded(
              child: GetX<Controller>(
                builder: (controller) {
                  return ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: controller.entries.length,
                      itemBuilder: (context, index) {
                        return Card(
                            margin: const EdgeInsets.all(4.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                              Text(controller.entries[index].name),
                              Text(controller.entries[index].price.toString()),
                              Column(
                                children: [
                                  IconButton(
                                      onPressed: () => {controller.updatecantidad(index)},
                                      icon: const Icon(Icons.arrow_upward)),
                                  IconButton(
                                      onPressed: () => {controller.downdatecantidad(index)},
                                      icon: const Icon(Icons.arrow_downward))
                                ],
                              ),
                              Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text("Quantity"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Obx(() => Text(controller.entries[index].quantity.toString()))
                                  ),
                                ],
                              )
                            ]),
                          );
                      });
                }
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}