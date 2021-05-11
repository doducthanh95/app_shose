import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/common/text_style.dart';

class HomeSliderItem extends StatelessWidget {
  HomeSliderItem({@required this.image});

  String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                'Super Flash Sale\n50% Off',
                style: AppTextStyle.t24B.copyWith(color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }
}
