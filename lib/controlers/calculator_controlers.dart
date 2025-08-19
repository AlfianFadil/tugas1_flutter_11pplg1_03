import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorControlers extends GetxController {
  final txtAngka1 = TextEditingController();
  final txtAngka2 = TextEditingController();
  RxString hasil = "".obs;

  void tambah() {
    int angka1 = int.tryParse(txtAngka1.text) ?? 0;
    int angka2 = int.tryParse(txtAngka2.text) ?? 0;

    hasil.value = (angka1 + angka2).toString();
  }

  void kurang() {
    int angka1 = int.tryParse(txtAngka1.text) ?? 0;
    int angka2 = int.tryParse(txtAngka2.text) ?? 0;

    hasil.value = (angka1 - angka2).toString();
  }

  void kali() {
    int angka1 = int.tryParse(txtAngka1.text) ?? 0;
    int angka2 = int.tryParse(txtAngka2.text) ?? 0;

    hasil.value = (angka1 * angka2).toString();
  }

  void bagi() {
    int angka1 = int.tryParse(txtAngka1.text) ?? 0;
    int angka2 = int.tryParse(txtAngka2.text) ?? 0;

    if (angka2 != 0) {
      hasil.value = (angka1 / angka2).toString();
    } else {
      hasil.value = "Tidak bisa dibagi dengan nol";
    }
  }

  void clear() {
    txtAngka1.clear();
    txtAngka2.clear();
    hasil.value = "";
  }
}
