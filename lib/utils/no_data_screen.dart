// ignore_for_file: must_be_immutable

import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoDataScreen extends StatelessWidget {
  String? noDataText;
  String? imageUrl;
  double imageHeight = 0.0;
  double imageWidth = 0.0;

  NoDataScreen(
      this.noDataText, this.imageUrl, this.imageHeight, this.imageWidth,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 0),
      child: Column(
        children: [
          Image.asset(imageUrl!, height: imageHeight, width: imageWidth),
          const SizedBox(
            height: 10,
          ),
          Text(
            noDataText!,
            style: TextStyle(
                fontSize: dimen18, color: CommonFunction.textThemeColor()),
          ),
        ],
      ),
    );
  }
}
