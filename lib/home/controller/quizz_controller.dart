import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_app/home/data/quizz_data.dart';

class QuizzController extends GetxController {
  Rx<int> index = 0.obs;
  RxList<Icon> icons = <Icon>[].obs;

  void joob(bool joobu) {
    if (joobu == jooptuAlipKel()) {
      icons.add(
        Icon(
          Icons.done,
          color: Colors.green,
          size: 50,
        ),
      );
    } else {
      icons.add(
        Icon(
          Icons.close,
          color: Colors.red,
          size: 50,
        ),
      );
    }
    otkoz();
    surronuAlipKel();
  }

  String surronuAlipKel() {
    if (index < questionLocalData.suroolorJooptor.length) {
      return questionLocalData.suroolorJooptor[index.value].suroo!;
    } else {
      restart();
      icons.clear();
      return 'suroo buttu';
    }
  }

  bool jooptuAlipKel() {
    return questionLocalData.suroolorJooptor[index.value].joop!;
  }

  void otkoz() {
    index.value++;
  }

  void restart() {
    index.value = 0;
  }
}
