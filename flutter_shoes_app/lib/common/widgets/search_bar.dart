import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/common/colors.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(2),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: AppColors.grey,
                    )),
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: AppColors.blue,
                ),
                hintText: 'Search Product'),
          )),
          SizedBox(
            width: 16,
          ),
          Row(
            children: [
              Icon(
                Icons.favorite_outline_rounded,
                color: AppColors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.notifications_none_outlined,
                color: AppColors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}
