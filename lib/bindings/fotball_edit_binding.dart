import 'package:flutter_application_1/controlers/football_edit_controller.dart';
import 'package:get/get.dart';

class FotballEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut <FootballEditController>(() => FootballEditController());
  }
}