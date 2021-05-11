import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/common/colors.dart';
import 'package:flutter_shoes_app/common/text_style.dart';

class ProductItemHome extends StatelessWidget {
  String image;
  String title;
  String price;

  ProductItemHome({this.image, this.title, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.grey)),
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
                  height: 109, width: 109, child: Image.asset(image))),
          SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: AppTextStyle.t16B.copyWith(color: AppColors.dark),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            price,
            style: AppTextStyle.t16B.copyWith(color: AppColors.blue),
          )
        ],
      ),
    );
  }
}
