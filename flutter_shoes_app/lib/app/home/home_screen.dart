import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/app/home/widgets/category_home.dart';
import 'package:flutter_shoes_app/app/home/widgets/home_slider.dart';
import 'package:flutter_shoes_app/app/home/widgets/list_product_home.dart';
import 'package:flutter_shoes_app/common/widgets/search_bar.dart';
import 'package:flutter_shoes_app/common/colors.dart';
import 'package:flutter_shoes_app/entities/shoe_model.dart';
import 'package:flutter_shoes_app/resource/app_images.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            SearchBar(),
            Divider(),
            HomeSlider(),
            CategoryHome(),
            ListProductHome(
              listProduct: [
                ShoeModel(
                    id: '',
                    name: 'FS - Nike Air Max 270 React...',
                    image: AppImages.im1,
                    price: '\$299,43'),
                ShoeModel(
                    id: '',
                    name: 'FS - Nike Air Max 270 React...',
                    image: AppImages.im2,
                    price: '\$299,43'),
                ShoeModel(
                    id: '',
                    name: 'FS - Nike Air Max 270 React...',
                    image: AppImages.im3,
                    price: '\$299,43'),
                ShoeModel(
                    id: '',
                    name: 'FS - Nike Air Max 270 React...',
                    image: AppImages.im8,
                    price: '\$299,43')
              ],
            ),
            ListProductHome(
              listProduct: [
                ShoeModel(
                    id: '',
                    name: 'Nike Air Max 270 React ENG',
                    image: AppImages.im4,
                    price: '\$699,43'),
                ShoeModel(
                    id: '',
                    name: 'Nike Air Max 270 React ENG',
                    image: AppImages.im5,
                    price: '\$699,43'),
                ShoeModel(
                    id: '',
                    name: 'Nike Air Max 270 React ENG',
                    image: AppImages.im6,
                    price: '\$699,43'),
                ShoeModel(
                    id: '',
                    name: 'Nike Air Max 270 React ENG',
                    image: AppImages.im7,
                    price: '\$699,43')
              ],
            )
          ],
        ),
      ),
    ));
  }
}
