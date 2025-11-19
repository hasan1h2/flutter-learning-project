import 'package:flutter/material.dart';
import 'package:untitled/Page/payment_&&Login_Page/payment_Page.dart';
import 'package:untitled/Page/uiHelpar.dart';
import 'package:untitled/headar/appBar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscure = true;
  final TextEditingController emailTex = TextEditingController();
  final TextEditingController pasText = TextEditingController();
  void emailPassValid() {
    String email = 'Ahosan@gmail.com';
    String pass = 'hasan1234';

    if (emailTex.text == email && pasText.text == pass) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PaymentPage()),
      );
    } else {
      print('Email Or Password Not Match');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Email or Password Not Match!',style: mytextStyle(textColors: Colors.black,fontSize: 20),),
          backgroundColor: Colors.redAccent,
        ),
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: 'Payment Login Page'),

      body: Center(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              elevation: 5,
              shadowColor: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Card Widget',
                  style: mytextStyle(
                    textColors: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
              height: 150,
              width: double.infinity,
              color: Colors.black12,
              child: Card(
                elevation: 5,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTfat6xEUl0ond3RFpvbjzj7vkThV5XeY8Ig&s',
                  fit: BoxFit.cover,
                  opacity: const AlwaysStoppedAnimation(0.8),
                )

              ),
            ),

            Card(
              elevation: 5,
              child: Container(
                width: 350,
                child: Column(
                  children: [
                    TextField(
                      controller: emailTex,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelStyle: mytextStyle(
                          fontSize: 25,
                          textColors: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                        labelText: 'Email',
                        hintText: 'Enter Your Email',
                        hintStyle: mytextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          textColors: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: pasText,
                      obscureText: isObscure,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.enhanced_encryption),
                        labelStyle: mytextStyle(
                          fontSize: 22,
                          textColors: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                        labelText: 'Password',
                        hintText: 'Enter Your Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscure ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                        ),
                        hintStyle: mytextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          textColors: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width:  double.infinity,
                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.all(12),
                      child: ElevatedButton(
                        onPressed: () {
                          emailPassValid();
                          print('Email: ${emailTex.text}');
                          print('Password: ${pasText.text}');

                        },
                        child: Text('Login',style: mytextStyle(fontWeight: FontWeight.w700,textColors: Colors.black54),),
                      ),
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
