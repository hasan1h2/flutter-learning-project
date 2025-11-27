import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../data/utils/static_colors/static_colors.dart';
import '../../../data/utils/static_img/static_img.dart';
import '../../../data/utils/static_string/static_string.dart';
import '../../../data/utils/static_style/staticstyle.dart';
import '../../../routes/app_pages.dart';

class HomeView extends GetView {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(StaticImg.profile),
                maxRadius: 30,
              ),
              title: Text(
                StaticString.profileTitle,
                style: StaticStyle.style(
                  14,
                  StaticColors.textstyle,
                  FontWeight.w600,
                ),
              ),
              subtitle: Text(
                StaticString.profileSubTitle,
                style: StaticStyle.style(
                  12,
                  StaticColors.textstyle,
                  FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Text(
                StaticString.myTasks,
                style: StaticStyle.style(
                  18,
                  StaticColors.textstyle,
                  FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 3),
                itemCount: StaticString.taskPage.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      if(index==0){
                        Get.toNamed(Routes.TASK_DETAILS_PAGE);
                      }

                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(StaticImg.banar),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(StaticImg.taskd, width: 26),
                          SizedBox(height: 20),
                          Text(
                            StaticString.taskPage[index]['title'],
                            style: StaticStyle.style(
                              14,
                              StaticColors.primaryTextColor,
                              FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            StaticString.taskPage[index]['sibtitle'],
                            style: StaticStyle.style(
                              12,
                              StaticColors.secondaryTextColor,
                              FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
