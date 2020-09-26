import 'package:get/get.dart';
import 'package:hello_getx/models.dart';

class CountController extends GetxController {
  int count = 0;
  RxList<RxUser> user = RxList();

  void asdd(RxUser deneme) {
    user.add(deneme);
    update();
  }

  void increment() {
    print(count);
    count++;
    update();
  }
}
