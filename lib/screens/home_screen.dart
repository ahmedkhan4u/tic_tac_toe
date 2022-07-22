import 'package:flutter/material.dart';
import 'package:tic_tac_toe/controllers/home_controller.dart';
import 'package:tic_tac_toe/widgets/custom_pressable.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _turn = "X";
    var controller = Get.find<HomeController>();

    final _values = ["", "", "", "", "", "", "", "", ""];
    void clickHandler(index) {
      controller.clickHandler(index);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tic Tac Toe"),
        actions: [
          InkWell(
            child: Icon(Icons.restart_alt),
            onTap: () {
              controller.resetGame();
            },
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 19, 18, 18),
        child: Obx(() {
          return Column(children: [
            Expanded(
                child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  Text(
                    'Turn : ${controller.turn}',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: Get.height * 0.03,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: Get.height * 0.012,
                  ),
                  Text(
                    'Player O : ${controller.pOScore}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Get.height * 0.026,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: Get.height * 0.012,
                  ),
                  Text(
                    'Player X : ${controller.pXScore}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Get.height * 0.026,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              alignment: Alignment.center,
            )),

            // First Row
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: Row(children: [
                CustomPressable(
                  text: controller.values[0],
                  clickHandler: () => controller.clickHandler(0),
                ),
                CustomPressable(
                  text: controller.values[1],
                  clickHandler: () => controller.clickHandler(1),
                ),
                CustomPressable(
                  text: controller.values[2],
                  clickHandler: () => controller.clickHandler(2),
                ),
              ]),
            )),

            // Second Row
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: Row(children: [
                CustomPressable(
                  text: controller.values[3],
                  clickHandler: () => controller.clickHandler(3),
                ),
                CustomPressable(
                  text: controller.values[4],
                  clickHandler: () => controller.clickHandler(4),
                ),
                CustomPressable(
                  text: controller.values[5],
                  clickHandler: () => controller.clickHandler(5),
                ),
              ]),
            )),
            // Third Row

            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: Row(children: [
                CustomPressable(
                  text: controller.values[6],
                  clickHandler: () => controller.clickHandler(6),
                ),
                CustomPressable(
                  text: controller.values[7],
                  clickHandler: () => controller.clickHandler(7),
                ),
                CustomPressable(
                  text: controller.values[8],
                  clickHandler: () => controller.clickHandler(8),
                ),
              ]),
            )),
          ]);
        }),
      ),
    );
  }
}
