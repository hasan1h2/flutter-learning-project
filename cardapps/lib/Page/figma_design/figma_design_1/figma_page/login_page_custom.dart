import 'package:flutter/material.dart';

class LoginPageCustom extends StatelessWidget {
  const LoginPageCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Welcome Text
        Padding(
          padding: EdgeInsets.only(top: 150, bottom: 100, left: 40),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                'Welcome !',
                style: TextStyle(
                  color: Color(0xff231936),
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Please Enter Your Personal Data',
                style: TextStyle(
                  color: Color(0xff919191),
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),

        // input field
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text(
                'E-mail',
                style: TextStyle(
                  color: Color(0xff545454),
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(45),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hint: Text(
                      'Enter your email',
                      style: TextStyle(
                        color: Color(0xffb5b5b5),
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45),
                      gapPadding: 10,
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text(
                'Enter your Password',
                style: TextStyle(
                  color: Color(0xff545454),
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(45),
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hint: Text(
                      'Password',
                      style: TextStyle(
                        color: Color(0xffb5b5b5),
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45),
                      gapPadding: 10,
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'poppins',
                ),
              ),
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: 48,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff8ee88e), Color(0xff80d180), Color(0xff6bae6b)],
                end: AlignmentGeometry.bottomCenter,
                begin: AlignmentGeometry.topCenter
            ),
            borderRadius: BorderRadius.circular(90),
          ),
          child: Center(
            child: Text(
              'Log in',
              style: TextStyle(
                color: Color(0xfffdfdfd),
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Divider(
                color: Color(0xffb5b5b5),
                thickness: 1,
                endIndent: 10,
                indent: 10,
              ),
            ),
            Text(
              'or sign in with',
              style: TextStyle(
                color: Color(0xff919191),
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            Expanded(
              child: Divider(
                color: Color(0xffb5b5b5),
                thickness: 1,
                endIndent: 10,
                indent: 10,
              ),
            ),
          ],
        ),
        Padding(
          padding:EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 50,
            children: [
              Image(image:AssetImage('assets/images/figma_image/fec.png') ),
              Image(image:AssetImage('assets/images/figma_image/ap.png') ),
              Image(image:AssetImage('assets/images/figma_image/go.png') ),
            ],
          ),
        ),
        Padding(
          padding:EdgeInsets.only(top: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text('Don’t have any account?',style: TextStyle(
                color: Color(0xff6c6c6c),
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),),
              Text('Sign up',style: TextStyle(
                color: Color(0xff0b002c),
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),)
            ],
          ),
        )

      ],
    ));
  }
}
