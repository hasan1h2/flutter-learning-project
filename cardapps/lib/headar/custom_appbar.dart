import 'package:flutter/material.dart';

import '../Page/figma_design/figma_design_1/figma_page/customdayer.dart';
import '../Page/figma_design/figma_design_1/figma_page/figma_model.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.img,
    required this.title,
    required this.uname,
    required this.notifiimg,
    required this.menuimg,
    required this.filterimg,
  });
  final String img;
  final String title;
  final String uname;
  final String notifiimg;
  final String menuimg;
  final String filterimg;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 80, bottom: 12, left: 20, right: 20),
      child: Column(
        // -------- Profile Row ----start----
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          width: 1,
                          color: Color(0xff6C57EC),
                          strokeAlign: 1,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage(img),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Color(0xff919191),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          uname,
                          style: TextStyle(
                            color: Color(0xff31276A),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        notifiimg,
                        width: 18,
                        height: 21.5,
                        fit: BoxFit.contain,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustomDrawer(
                              headerImg: customdrawerhaderlogin['haderImg'],
                              loginImg: customdrawerhaderlogin['loginImg'],
                              loginTitle: customdrawerhaderlogin['loginTitle'],
                            ),directionalTraversalEdgeBehavior:TraversalEdgeBehavior.closedLoop
                          ),
                        );
                      },
                      icon: Image.asset(
                        menuimg,
                        width: 24,
                        height: 24,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search Here...',
                    hintStyle: const TextStyle(
                      color: Color(0xffC1C1C1),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xff6C57EC),
                      size: 18,
                    ),
                    filled: true,
                    fillColor: const Color(0xffF5F5F5),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(filterimg)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
