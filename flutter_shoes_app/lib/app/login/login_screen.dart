import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/app_router.dart';
import 'package:flutter_shoes_app/common/colors.dart';
import 'package:flutter_shoes_app/common/text_style.dart';
import 'package:flutter_shoes_app/resource/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        children: [_buildTopWidget(), _buildContent(), _buildBottomWidget()],
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
          _buildButtonSocial('Login with Google', AppImages.icGmail),
          SizedBox(
            height: 10,
          ),
          _buildButtonSocial('Login with Facebook', AppImages.icFacebook),
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
        onPressed: () {
          Navigator.pushNamed(context, AppRouter.root);
        },
        style: ElevatedButton.styleFrom(
            elevation: 0,
            minimumSize: Size(double.infinity, 48),
            textStyle: AppTextStyle.t16B.copyWith(color: Colors.white),
            primary: AppColors.blue),
        child: Text('Sign in'));
  }

  Widget _buildButtonSocial(String title, String icon) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            icon,
            width: 24,
            height: 24,
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: AppTextStyle.t16B
                    .copyWith(color: AppColors.grey.withOpacity(0.8)),
              ),
            ),
          )
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          minimumSize: Size(double.infinity, 48),
          side: BorderSide(color: AppColors.grey, width: 1)),
    );
  }

  Widget _buildBottomWidget() {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text('Forgot password?',
              style: AppTextStyle.t12B.copyWith(color: AppColors.blue)),
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(text: 'Don\'t have a account? ', style: AppTextStyle.t12N),
          TextSpan(
              text: 'Register',
              style: AppTextStyle.t12N.copyWith(color: AppColors.blue)),
        ]))
      ],
    );
  }
}
