import 'package:get/get.dart';

class RxUser {
  RxString name = "".obs;
  RxInt age = 0.obs;
  RxUser({this.name, this.age});
}
