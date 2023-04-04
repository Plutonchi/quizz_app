import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_app/home/controller/quizz_controller.dart';
import 'package:quizz_app/home/data/quizz_data.dart';

class HemoPage extends StatelessWidget {
  HemoPage({super.key});
  List<Icon> ikonkalar = [];

  bool isFinished = false;

  Widget containerBer() {
    return Container(
      color: Colors.yellow,
      child: Text(
        'Salam',
        style: TextStyle(fontSize: 50),
      ),
    );
  }

  QuizzController _controller = Get.put(
    QuizzController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          containerBer(),
          isFinished == true
              ? AlertDialog(
                  title: const Text("Suroolor buttu"),
                  actions: [
                    TextButton(
                        onPressed: () {}, child: const Text("Kaira bashta"))
                  ],
                )
              : Obx(() => Text(
                    _controller.surronuAlipKel(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  )),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              _controller.joob(true);
            },
            child: Container(
              color: Colors.green,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 12),
                child: Text(
                  'Tuura',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              _controller.joob(false);
            },
            child: Container(
              color: Colors.red,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                child: Text(
                  'Tuura emes',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(
            () => Row(children: _controller.icons),
          ),
        ],
      ),
    );
  }
}
