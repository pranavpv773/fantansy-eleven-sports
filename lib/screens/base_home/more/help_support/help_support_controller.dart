import 'package:get/get.dart';

class HelpSupportController extends GetxController {
  var text = false.obs;


  demoText(){
    text.value= !text.value;
  }



}
