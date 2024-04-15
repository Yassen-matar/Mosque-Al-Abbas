// ignore_for_file: must_be_immutable
/*   var listData = parsedJson['data'] as List;
        List<OffersData> _data =
            listData.map((i) => OffersData.fromJson(i)).toList();*/
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final bool enableSelection;
  TextStyle hintStyle;
  final bool obscureText;
  final Widget? iconData;
  final Widget? iconPassword;
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController mycontroller;
  final Function()? onTap;
  final TextInputType? keyboardType;
  final bool password;
  final FocusNode? focusNode;
  final double radius;

  CustomTextFormField({
    super.key,
    this.keyboardType,
    this.onTap,
    this.enableSelection = false,
    this.obscureText = false,
    required this.hintText,
    this.validator,
    required this.mycontroller,
    this.iconData,
    this.password = false,
    this.iconPassword,
    this.focusNode,
    this.radius = 15,
    this.hintStyle = const TextStyle(color: Colors.grey),
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10.h,
        right: 20.w,
        left: 20.w,
      ),
      child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          focusNode: focusNode,
          controller: mycontroller,
          keyboardType: keyboardType,
          enableInteractiveSelection: false,
          //hide password
          obscureText: obscureText,
          //validate
          validator: validator,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hoverColor: Colors.white,
            contentPadding: const EdgeInsetsDirectional.all(20),
            suffixIcon: password == true
                ? InkWell(
                    onTap: onTap,
                    child: iconPassword,
                  )
                : iconPassword,
            prefixIcon: iconData,

            ///error border
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                borderSide: const BorderSide(color: Colors.red, width: 1)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                borderSide: const BorderSide(color: Colors.red, width: 1)),
            //label

            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: hintText,
            hintStyle: hintStyle,
            ///////enable border
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                borderSide: BorderSide(color: Colors.grey, width: 1.w)),
            ////////
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
                borderSide: BorderSide(color: Colors.grey, width: 1.w)),
          )),
    );
  }
}
