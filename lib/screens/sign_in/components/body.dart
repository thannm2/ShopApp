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
                  SizedBox(height: getProportionateScreenHeight(20)),
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
  final _formKey = GlobalKey<FormState>();
  final List<String> error = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              SizedBox(
                width: getProportionateScreenWidth(10),
              ),
              Text(error[0]),
            ],
          ),
          DefaultButton(
            text:"Tiếp tục",
            press: (){},
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
        obscureText: true,
        decoration:const InputDecoration(
          labelText: "Mật khẩu",
          hintText: "Nhập mật khẩu",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon:  "assets/icons/Lock.svg",
          ),
        ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value){
        if (value == null || value.isEmpty){
          setState(() {
            error.add("Vui lòng nhập email");
          });
        }
        return null;
      },
      decoration:const InputDecoration(
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



