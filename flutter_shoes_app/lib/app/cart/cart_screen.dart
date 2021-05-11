import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/app/cart/widgets/cart_item.dart';
import 'package:flutter_shoes_app/common/colors.dart';
import 'package:flutter_shoes_app/common/text_style.dart';
import 'package:flutter_shoes_app/entities/shoe_model.dart';
import 'package:flutter_shoes_app/resource/app_images.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Your Cart',
          style: AppTextStyle.t16B,
        ),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CartItem(
                model: ShoeModel(
                    id: '',
                    name: 'Nike Air Zoom Pegasus 36 Miami',
                    image: AppImages.im1,
                    price: '\$299,43'),
              ),
              CartItem(
                model: ShoeModel(
                    id: '',
                    name: 'Nike Air Zoom Pegasus 36 Miami',
                    image: AppImages.im2,
                    price: '\$299,43'),
              ),
              _buildFieldCodeSale(),
              _buildReport(),
              _buildButtonCheckout(),
            ],
          ),
        ),
      ),
    );
  }

  _buildFieldCodeSale() {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      height: 56,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            height: 56,
            padding: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.red),
                borderRadius: BorderRadius.circular(8)),
            child: TextFormField(
              decoration:
                  InputDecoration(hintText: 'Code', border: InputBorder.none),
            ),
          ),
          Container(
            height: 56,
            width: 90,
            decoration: BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Center(
              child: Text(
                'Apply',
                style: AppTextStyle.t16B.copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildButtonCheckout() {
    return Container(
      margin: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {},
        child: Center(
          child: Text('Checkout'),
        ),
        style: ElevatedButton.styleFrom(
            primary: AppColors.blue, minimumSize: Size(double.infinity, 56)),
      ),
    );
  }

  _buildReport() {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.light)),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Items(3)',
                style: AppTextStyle.t16N.copyWith(color: AppColors.grey),
              ),
              Text(
                '\$598.86',
                style: AppTextStyle.t16N,
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipping',
                style: AppTextStyle.t16N.copyWith(color: AppColors.grey),
              ),
              Text(
                '\$40.00',
                style: AppTextStyle.t16N,
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Import charges',
                style: AppTextStyle.t16N.copyWith(color: AppColors.grey),
              ),
              Text(
                '\$128.00',
                style: AppTextStyle.t16N,
              )
            ],
          ),
          Divider(
            height: 40,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: AppTextStyle.t16B.copyWith(color: AppColors.grey),
              ),
              Text(
                '\$766.86',
                style: AppTextStyle.t16B.copyWith(color: AppColors.blue),
              )
            ],
          ),
        ],
      ),
    );
  }
}
