import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class CurrentAccount extends StatelessWidget {
  const CurrentAccount({super.key});

  @override
  Widget build(BuildContext context) {
    double amount = 5400.50;
    String formattedAmount = NumberFormat.currency(
      locale: 'en_US',
      symbol: '৳',
    ).format(amount);

    return SizedBox(
      child: Container(
        // alignment: Alignment(-1, 0),
        height: 100,
        width:  double.infinity,
        color: Colors.blueGrey.shade100,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('Current Balance ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1),),
              SizedBox(height: 3,),
              Text(formattedAmount,style:  TextStyle(fontSize: 16,fontWeight: FontWeight.w400,letterSpacing: 1),)
            ],
          ),
        ),


      ),
    );
  }
}
