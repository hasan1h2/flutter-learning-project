import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  const CardBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Dynamic Card Data
    final List<Map<String, String>> cardData = [
      {
        "number": "0245 3697 0250 1234",
        "name": "Ahosan Habib",
        "brand": "VISA",
      },
      {
        "number": "5369 8745 3025 9874",
        "name": "MD. Ahosan",
        "brand": "MasterCard",
      },
      {
        "number": "0187 6543 2109 8765",
        "name": "Ahosan Pay",
        "brand": "bKash",
      },
    ];

    return ListView.builder(

      scrollDirection: Axis.horizontal,
      itemCount: cardData.length,
      itemBuilder: (context, index) {
        final card = cardData[index];
        return Container(

          width: 260,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.blue.shade400,Colors.pink.shade500, Colors.blue.shade700,Colors.red.shade400],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(2, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                card["number"]!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      card["name"]!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      card["brand"]!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
