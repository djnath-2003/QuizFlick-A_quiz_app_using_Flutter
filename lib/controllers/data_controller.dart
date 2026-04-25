import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class DataController extends GetxController {
  RxString category = ''.obs;
  RxString userName = ''.obs;

  final categoryNameController = TextEditingController();

  void initCategory(String data) {
    category.value = data;
  }

  void initUsername(String data) {
    userName.value = data;
  }

  // Future<void> showNamePopUp(BuildContext context) {
  //   return showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //             content: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               children: [
  //                 TextField(
  //                   controller: categoryNameController,
  //                   keyboardType: TextInputType.text,
  //                   maxLines: 1,
  //                   decoration: const InputDecoration(
  //                       labelText: 'Enter your Name',
  //                       hintMaxLines: 1,
  //                       border: OutlineInputBorder(
  //                           borderSide:
  //                               BorderSide(color: Colors.green, width: 4.0))),
  //                 ),
  //                 const SizedBox(
  //                   height: 30.0,
  //                 ),
  //                 ElevatedButton(
  //                     onPressed: () {
  //                       userName.value = categoryNameController.text.trim();
  //                       Get.back();
  //                     },
  //                     child: const Text("Submit"))
  //               ],
  //             ),
  //             elevation: 12.0,
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(10.0)));
  //       });
  // }
}
