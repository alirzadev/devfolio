import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class ProjectCard extends StatelessWidget {
  final String name;
  final String description;
  final String image;

  ProjectCard({this.name, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(!isMobile(context) ? 20.0 : 15.0),
      width: !isMobile(context) ? Get.width / 3 : Get.width / 1.25,
      height: !isMobile(context) ? 2 * Get.width / 9 : 2 * (Get.width / 3.75),
      color: AppColors.white.withOpacity(0.15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Klime',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: AppColors.white.withOpacity(0.75),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Expanded(
                  child: Container(
                    child: SingleChildScrollView(
                      primary: false,
                      child: Text(
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
                        // overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.white.withOpacity(0.75),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 15.0),
          Container(
            height: !isMobile(context) ? 2 * Get.width / 9 : 2 * (Get.width / 3.75),
            color: AppColors.grey,
            child: Image.asset('assets/images/klimeHome.jpg', fit: BoxFit.fitHeight),
          ),
        ],
      ),
    );
  }
}
