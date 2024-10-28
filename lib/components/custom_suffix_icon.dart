import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    super.key, required this.svgIcon,
  });
  final String svgIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenWidth(18),
        width: 10,
        color: Colors.black,
      ),
    );
  }
}