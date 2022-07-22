import 'package:get/get.dart';

class HomeController extends GetxController {
  var turn = "X".obs;
  var pOScore = 0.obs;
  var pXScore = 0.obs;
  List<String> values = ["", "", "", "", "", "", "", "", ""].obs;

  void clickHandler(index) {
    if (values[index] != "") {
      return;
    }
    if (turn == "X") {
      values[index] = "X";
      turn.value = "O";
      return;
    }
    values[index] = "O";
    turn.value = "X";
  }

  void resetGame() {
    for (int i = 0; i < values.length; i++) {
      values[i] = "";
    }
  }

  void winCheck() {
    if (values[0] == "X" && values[1] == "X" && values[2] == "X") {
      print("Player X Wins");
    } else {}
  }
}
