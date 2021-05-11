import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/common/colors.dart';
import 'package:flutter_shoes_app/common/text_style.dart';
import 'package:flutter_shoes_app/resource/app_images.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          _buildAvatar(),
          _buildTextfieldInfo(Icons.person, 'Gender', 'main'),
          _buildTextfieldInfo(
              Icons.calendar_today_outlined, 'Birthday', '19-04-1995'),
          _buildTextfieldInfo(
              Icons.mail_outline, 'Email', 'maximusgold@gmail.com'),
          _buildTextfieldInfo(
              Icons.phone_android_outlined, 'Phone', '+88123456789'),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          ClipRRect(
            child: Image.asset(AppImages.imAccount),
            borderRadius: BorderRadius.circular(72),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Maximus Gold',
                style: AppTextStyle.t16B,
              ),
              Text(
                '@derlaxy',
                style: AppTextStyle.t12N,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTextfieldInfo(IconData iconData, String title, String info) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                iconData,
                color: AppColors.blue,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: AppTextStyle.t16B,
              ),
            ],
          ),
          Row(
            children: [
              Text(info,
                  style: AppTextStyle.t16N.copyWith(color: AppColors.white)),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColors.grey,
              )
            ],
          )
        ],
      ),
    );
  }
}
