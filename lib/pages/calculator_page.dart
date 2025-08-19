import 'package:flutter/material.dart';
import 'package:flutter_application_1/controlers/calculator_controlers.dart';
import 'package:flutter_application_1/widget/widget_button.dart';
import 'package:flutter_application_1/widget/widget_textfild.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorControlers calculatorControlers =
      Get.put(CalculatorControlers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextFild(
              hint: "Masukkan Angka 1",
              controller: calculatorControlers.txtAngka1,
              labelText: "Angka 1",
            ),
            MyTextFild(
              hint: "Masukkan Angka 2",
              controller: calculatorControlers.txtAngka2,
              labelText: "Angka 2",
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: "+",
                  textColor: const Color.fromARGB(255, 0, 0, 0),
                  onPressed: () {
                    calculatorControlers.tambah();
                  }, textColour: Colors.blue,
                ),
                const SizedBox(width: 10),
                CustomButton(
                  text: "-",
                  textColor: const Color.fromARGB(255, 0, 0, 0),
                  onPressed: () {
                    calculatorControlers.kurang();
                  }, textColour: Colors.blue,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: "*",
                  textColor: const Color.fromARGB(255, 0, 0, 0),
                  onPressed: () {
                    calculatorControlers.kali();
                  }, textColour: Colors.blue,
                ),
                const SizedBox(width: 10),
                CustomButton(
                  text: "/",
                  textColor: const Color.fromARGB(255, 12, 12, 12),
                  onPressed: () {
                    calculatorControlers.bagi();
                  }, textColour: Colors.blue,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Obx(() {
              return Text(
                "Hasil: ${calculatorControlers.hasil.value}",
                style: const TextStyle(fontSize: 18),
              );
            }),
            const SizedBox(height: 20),
            CustomButton(
              text: "Clear",
              textColor: Colors.blue,
              onPressed: () {
                calculatorControlers.clear();
              }, textColour: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
