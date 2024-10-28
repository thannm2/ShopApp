import 'package:flutter/material.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../size_config.dart';
import '../../components/defaultButton.dart';
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Chào mừng trở lại",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Đăng nhập bằng email hoặc số điện thoại",
                    textAlign: TextAlign.center,
                  ),
                  SignForm(),
                ],
              ),
            ),
        ),
    );
  }
}
class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text:"Tiếp tục",
            press: (){},
          )
        ],
      ),
    );
  }

  TextField buildPasswordFormField() {
    return TextField(
          obscureText: true,
          decoration:InputDecoration(
            labelText: "Mật khẩu",
            hintText: "Nhập mật khẩu",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
              svgIcon:  "assets/icons/Lock.svg",
            ),
          ),
        );
  }

  TextField buildEmailFormField() {
    return TextField(
          keyboardType: TextInputType.emailAddress,
          decoration:InputDecoration(
            labelText: "Email",
            hintText: "Nhập email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
              svgIcon:  "assets/icons/Message.svg",
            ),
           ),
        );
  }
}



