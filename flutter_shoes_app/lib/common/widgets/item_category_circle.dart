import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/common/colors.dart';
import 'package:flutter_shoes_app/common/text_style.dart';
import 'package:flutter_shoes_app/resource/app_images.dart';

class ItemCategoryCircle extends StatelessWidget {
  final String title;
  final String image;

  ItemCategoryCircle(this.image, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.grey),
                borderRadius: BorderRadius.circular(70)),
            child: Center(
              child: Image.asset(
                image,
                height: 24,
                width: 24,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Text(
              title,
              style: AppTextStyle.t12N,
            ),
          )
        ],
      ),
    );
  }
}
