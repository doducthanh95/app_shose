import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/common/colors.dart';
import 'package:flutter_shoes_app/common/text_style.dart';
import 'package:flutter_shoes_app/common/widgets/item_category_circle.dart';
import 'package:flutter_shoes_app/resource/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, left: 16),
      height: 150,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Category',
                style: AppTextStyle.t16B,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  'MoreCategory',
                  style: AppTextStyle.t16B.copyWith(color: AppColors.blue),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => Container(
                width: 10,
              ),
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return ItemCategoryCircle(AppImages.icShirt, 'Man Bikini');
                  case 1:
                    return ItemCategoryCircle(AppImages.icShirt, 'Man Bag');
                  case 2:
                    return ItemCategoryCircle(
                        AppImages.icManPants, 'Man Pants');
                  case 3:
                    return ItemCategoryCircle(
                        AppImages.icManshoes, 'Man Shoes');
                  case 4:
                    return ItemCategoryCircle(AppImages.icShirt, 'Shirt');
                  case 5:
                    return ItemCategoryCircle(AppImages.icTshirt, 'T Shirt');
                  case 6:
                    return ItemCategoryCircle(
                        AppImages.icWomanbag, 'Woman Bag');
                  default:
                    return ItemCategoryCircle(AppImages.icShirt, 'Man Bikini');
                }
              },
              itemCount: 7,
            ),
          )
        ],
      ),
    );
  }
}
