import 'package:flutter/material.dart';
import '../../headar/appBar.dart';
import 'card_widget/cardBody.dart';
import 'card_widget/current_Account.dart';
import 'card_widget/current_AccountBalance.dart';
import 'card_widget/transactionSextion.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        title: "Account-Info",
        backgroundColor: Colors.cyan,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://img.freepik.com/free-photo/front-view-man-posing_23-2148364843.jpg?semt=ais_hybrid&w=740&q=80',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.settings, size: 28, color: Colors.white),
            onPressed: () {
            },
          ),
        ],
      ),

      // drawer: myDrawer(context),
backgroundColor: Colors.grey.shade200,
      body:Column(

        children: [
          // CurrentAccountStart
          CurrentAccount(),
          // CurrentAccountEnd
          // CardBodyStart
          SizedBox(child: CardBody(),height: 160,),
          // CardBodyEnd
          // CurrentAccount2Start
          CurrentAccount2(),
          // CurrentAccount2End
          // TransactionSextionStart
          TransactionSextion()
          // TransactionSextionEnd
        ],
      )
    );
  }
}
