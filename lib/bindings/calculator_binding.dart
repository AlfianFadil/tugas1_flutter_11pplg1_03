import 'package:flutter_application_1/controlers/calculator_controlers.dart';
import 'package:get/get.dart';

class CalculatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut <CalculatorControlers>(() => CalculatorControlers());
    //hanya dipanggil ketika di butuhkan saja
  } 
 
}