import 'package:get/get.dart';

import '../providers/get_data_provider_provider.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  @override
  void onInit() {
    print("onInit");
    getData();
    super.onInit();
  }


  var list = [].obs;
  List<dynamic> characters = [];
  List posts = [];

  void getData() {
    getAllUsers().then((value) {
      list.clear();
      list.addAll(value);
    });
  }
}
