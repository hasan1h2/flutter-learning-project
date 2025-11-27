import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../auth_pages/login_Sinup_page/controllers/login_sinup_page_controller.dart';

class CustomFrom extends StatelessWidget {
  const CustomFrom({
    super.key,
    required this.loginTitle,
    required this.loginHent,
    required this.isPassword,
    required this.controller,
    required this.horizontalpd,
    required this.verticalpd,
    this.validator,
    this.mainController,
    this.isGaFrom = false,
     this.maxLines=3,
     this.maxLength=4,  this.isEditProf=true,
  });
  final String loginTitle;
  final String loginHent;
  final double horizontalpd;
  final double verticalpd;
  final bool isPassword;
  final int maxLines;
  final int maxLength;
  final bool isGaFrom;
  final bool isEditProf;
  final dynamic mainController;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          loginTitle,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 12),

        Container(
          padding: EdgeInsets.symmetric(
            vertical: verticalpd,
            horizontal: horizontalpd,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),

          child: isPassword
              ? Obx(
                  () => TextFormField(
                    controller: controller,
                    validator: validator,
                    obscureText: mainController!.isObscure.value,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(height: 0, fontSize: 0),
                      border: InputBorder.none,
                      hintText: loginHent,
                      suffixIcon: IconButton(
                        icon: Icon(
                          mainController!.isObscure.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: mainController!.togglePassword,
                      ),
                    ),
                  ),
                )
              : TextFormField(
                  controller: controller,
                  validator: validator,
                  maxLines: isGaFrom ? maxLength : null,
                  maxLength: isGaFrom ? maxLines : null,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(height: 0, fontSize: 0),
                    border: InputBorder.none,
                    hintText: loginHent,
                  ),
                ),
        ),
      ],
    );
  }
}
