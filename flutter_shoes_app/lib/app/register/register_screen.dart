import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/common/colors.dart';
import 'package:flutter_shoes_app/common/text_style.dart';
import 'package:flutter_shoes_app/resource/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _emailControl;
  TextEditingController _passControl;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailControl = TextEditingController();
    _passControl = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: SafeArea(
        child: _buildBody(),
      )),
    );
  }

  Widget _buildBody() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildTopWidget(),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildTopWidget() {
    return Column(
      children: [
        SvgPicture.asset(AppImages.imLogo),
        SizedBox(
          height: 16,
        ),
        Text(
          'Wellcome to ShoesShop',
          style: AppTextStyle.t16B,
        ),
        Text(
          'Sign in to continue',
          style: AppTextStyle.t12N,
        )
      ],
    );
  }

  Widget _buildContent() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 16, right: 16),
      child: Column(
        children: [
          _buildTextField(_emailControl, 'Your email', Icons.email_outlined),
          _buildTextField(_passControl, 'Password', Icons.lock_outline_rounded),
          SizedBox(
            height: 20,
          ),
          _buildButtonSignIn(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Divider(
                  height: 1,
                ),
                Container(
                  width: 60,
                  height: 40,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'OR',
                      style: AppTextStyle.t16B,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(
      TextEditingController controller, String hintText, IconData icon) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: TextFormField(
        controller: controller,
        style: AppTextStyle.t12N.copyWith(color: Colors.black),
        decoration: InputDecoration(
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            filled: true,
            prefixIcon: Icon(icon),
            hintText: hintText,
            hintStyle: AppTextStyle.t12N),
      ),
    );
  }

  Widget _buildButtonSignIn() {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: 0,
            minimumSize: Size(double.infinity, 48),
            textStyle: AppTextStyle.t16B.copyWith(color: Colors.white),
            primary: AppColors.blue),
        child: Text('Sign in'));
  }
}
