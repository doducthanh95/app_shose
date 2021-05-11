import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/common/text_style.dart';
import 'package:flutter_shoes_app/common/widgets/item_category_circle.dart';
import 'package:flutter_shoes_app/common/widgets/search_bar.dart';
import 'package:flutter_shoes_app/resource/app_images.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final list = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            leadingWidth: 0,
            leading: Container(),
            expandedHeight: 50,
            title: Padding(
                padding: EdgeInsets.only(bottom: 10, top: 10),
                child: SearchBar()),
            elevation: 2,
          ),
          SliverToBoxAdapter(
            child: Container(child: _buildGridCategory('Men')),
          ),
          SliverToBoxAdapter(
            child: Container(child: _buildGridCategory('Girl')),
          ),
          SliverToBoxAdapter(
            child: Container(child: _buildGridCategory('Baby')),
          )
        ],
      ),
    );
  }

  _buildGridCategory(String title) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: AppTextStyle.t16B,
          ),
          SizedBox(
            height: 8,
          ),
          Flexible(
            child: GridView.count(
              children: List<Widget>.generate(
                  7,
                  (index) => Container(
                      constraints: BoxConstraints(minHeight: 70),
                      child: ItemCategoryCircle(
                          AppImages.icWomanbag, 'Woman bag'))).toList(),
              crossAxisCount: MediaQuery.of(context).size.width ~/ 80,
              crossAxisSpacing: 16,
              shrinkWrap: true,
              childAspectRatio: 0.5,
              physics: NeverScrollableScrollPhysics(),
            ),
          )
        ],
      ),
    );
  }
}
