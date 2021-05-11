import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/common/colors.dart';
import 'package:flutter_shoes_app/common/text_style.dart';
import 'package:flutter_shoes_app/entities/shoe_model.dart';

class CartItem extends StatelessWidget {
  CartItem({this.model});

  final ShoeModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.light)),
      child: Row(
        children: [
          Image.asset(
            model.image,
            width: 72,
            height: 72,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      model.name,
                      style: AppTextStyle.t16B,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_outlined,
                        color: AppColors.red,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(Icons.restore_from_trash_rounded,
                          color: AppColors.grey),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    model.price,
                    style: AppTextStyle.t16B.copyWith(color: AppColors.blue),
                  ),
                  Container(
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.grey)),
                    child: Row(
                      children: [
                        Container(width: 36, child: Center(child: Text('-'))),
                        Container(
                          width: 36,
                          color: AppColors.light,
                          child: Center(
                            child: Text('1'),
                          ),
                        ),
                        Container(
                          width: 36,
                          child: Icon(
                            Icons.add,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
