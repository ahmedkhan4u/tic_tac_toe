import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var turn = "X".obs;
  var pOScore = 0.obs;
  var pXScore = 0.obs;
  var status = 0.obs;
  List<String> values = ["", "", "", "", "", "", "", "", ""].obs;

  void clickHandler(index) {
    if (status == 1) return;
    if (values[index] != "") {
      return;
    }
    if (turn == "X") {
      values[index] = "X";
      winCheck(turn);
      turn.value = "O";
      return;
    }
    values[index] = "O";

    winCheck(turn);
    turn.value = "X";
  }

  void resetGame() {
    for (int i = 0; i < values.length; i++) {
      values[i] = "";
    }
  }

  void winCheck(turn) {
    if (values[0] != "" && values[0] == values[1] && values[1] == values[2]) {
      print("Player $turn Wins");
      showAlertDialog(turn);
      return;
    }

    if (values[3] != "" && values[3] == values[4] && values[4] == values[5]) {
      print("Player $turn Wins");
      showAlertDialog(turn);
      return;
    }

    if (values[6] != "" && values[6] == values[7] && values[7] == values[8]) {
      print("Player $turn Wins");
      showAlertDialog(turn);
      return;
    }

    if (values[0] != "" && values[0] == values[3] && values[3] == values[6]) {
      print("Player $turn Wins");
      showAlertDialog(turn);
      return;
    }

    if (values[1] != "" && values[1] == values[4] && values[4] == values[7]) {
      print("Player $turn Wins");
      showAlertDialog(turn);
      return;
    }

    if (values[2] != "" && values[2] == values[5] && values[5] == values[8]) {
      print("Player $turn Wins");
      showAlertDialog(turn);
      return;
    }

    if (values[0] != "" && values[0] == values[4] && values[4] == values[8]) {
      print("Player $turn Wins");
      showAlertDialog(turn);
      return;
    }

    if (values[6] != "" && values[6] == values[4] && values[4] == values[2]) {
      print("Player $turn Wins");
      showAlertDialog(turn);
      return;
    }
  }

  void showAlertDialog(turn) {
    Get.defaultDialog(
        title: "Congrats",
        middleText: "Player $turn Wins",
        textConfirm: "OK",
        confirmTextColor: Colors.white,
        onConfirm: () => Get.back());
    status.value = 1;
    if (turn == "X") {
      pXScore++;
    } else {
      pOScore++;
    }
  }
}


// 0 1 2
// 3 4 5
// 6 7 8