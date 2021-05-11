import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/app/home/widgets/product_item_home.dart';
import 'package:flutter_shoes_app/common/colors.dart';
import 'package:flutter_shoes_app/common/text_style.dart';
import 'package:flutter_shoes_app/entities/shoe_model.dart';

class ListProductHome extends StatefulWidget {
  final List<ShoeModel> listProduct;

  ListProductHome({this.listProduct});

  @override
  _ListProductHomeState createState() => _ListProductHomeState();
}

class _ListProductHomeState extends State<ListProductHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 100),
      padding: EdgeInsets.only(left: 16, top: 16),
      height: 250,
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
                  'SeeMore',
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
                  itemBuilder: (context, index) {
                    return ProductItemHome(
                        image: widget.listProduct[index].image,
                        title: widget.listProduct[index].name,
                        price: widget.listProduct[index].price);
                  },
                  separatorBuilder: (context, index) => Container(
                        width: 10,
                      ),
                  itemCount: widget.listProduct.length))
        ],
      ),
    );
  }
}
