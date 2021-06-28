import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:devfolio/utilities/url_launer.dart';
import 'package:devfolio/view/custom_widgets/skills_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubRepoCard extends StatefulWidget {
  final Map repos;

  GithubRepoCard({Key key, @required this.repos}) : super(key: key);

  @override
  _GithubRepoCardState createState() => _GithubRepoCardState();
}

class _GithubRepoCardState extends State<GithubRepoCard> {
  double elevation = 2.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: !isMobile(context) ? 25.0 : 15.0),
      child: InkWell(
        onTap: () {
          //Launch RepoUrl
          UrlLauncher(url: widget.repos['repoUrl']).launchUrl();
        },
        onHover: (isHovering) {
          if (isHovering) {
            setState(() {
              elevation = 8.0;
            });
          } else {
            setState(() {
              elevation = 2.0;
            });
          }
        },
        child: Container(
          padding: const EdgeInsets.all(15.0),
          width: 230.0,
          height: 230.0,
          color: AppColors.white.withOpacity(0.15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.repos['repoName'],
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16.0,
                  color: AppColors.white.withOpacity(0.75),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: Get.height / (2.75 * 2.5),
                height: 5.0,
                decoration: BoxDecoration(
                  color: AppColors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                widget.repos['repoDescription'],
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: AppColors.white.withOpacity(0.75),
                ),
              ),
              SizedBox(height: 10.0),
              RichText(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  text: 'Tech: ',
                  style: TextStyle(color: AppColors.red, fontWeight: FontWeight.w900, height: 1.2),
                  children: [
                    TextSpan(
                      text: '${widget.repos['language']}, ${widget.repos['framework']}',
                      style: TextStyle(color: AppColors.white.withOpacity(0.75), fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: CustomButton(
                  onPressed: () {
                    launch(widget.repos['repoUrl']);
                  },
                  lessPadding: true,
                  title: 'Source Code',
                  btnColor: AppColors.black,
                  textColor: AppColors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    paint
      ..color = AppColors.red.withOpacity(.95)
      ..style = PaintingStyle.fill;

    path..lineTo(0, size.height / 3);
    path..quadraticBezierTo(0, size.height / 3, size.width, size.height / 2 - 10);
    path..lineTo(size.width, 0);
    path..lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
    // throw UnimplementedError();
  }
}
