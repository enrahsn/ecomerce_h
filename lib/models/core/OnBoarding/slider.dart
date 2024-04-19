import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/boarding_ctrl.dart';
import '../../../models/constant/colors.dart';
import '../../../models/data/data_source/static/static.dart';

class MySlider extends GetView<BoardingCtrlImp> {
  const MySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (val) {
        // controller.changeIndex(val);
        print(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          onBoardingList[i].title!,
          // style: Theme.of(context).textTheme.displayMedium,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 30,
        ),
        Image.asset(
          onBoardingList[i].image!,
          // width: 200,
          height: 230,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].description!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  height: 2,
                  color: AppColor.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            )),
        // const SizedBox(height: 10),
      ]),
    );
  }
}
