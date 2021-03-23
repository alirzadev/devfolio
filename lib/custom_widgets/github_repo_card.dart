import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:devfolio/utilities/url_launer.dart';
import 'package:flutter/material.dart';

class GithubRepoCard extends StatefulWidget {
  final String name;
  final String description;
  final String language;
  final String framework;
  final String repoUrl;

  GithubRepoCard({
    Key key,
    this.name,
    this.description,
    this.language,
    this.framework,
    this.repoUrl,
  }) : super(key: key);

  @override
  _GithubRepoCardState createState() => _GithubRepoCardState();
}

class _GithubRepoCardState extends State<GithubRepoCard> {
  double elevation = 2.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 15),
      child: InkWell(
        onTap: () {
          //Launch RepoUrl
          UrlLauncher(url: widget.repoUrl).launchUrl();
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
        child: Card(
          elevation: elevation,
          child: Stack(
            children: [
              Container(
                width: 250,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.red.withOpacity(.75)),
                ),
                child: CustomPaint(
                  painter: CustomShape(),
                ),
              ),
              Container(
                width: 250,
                padding: const EdgeInsets.only(top: 15, left: 20),
                child: Text(
                  '${widget.name}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 28,
                  ),
                ),
              ),
              Positioned(
                top: 105,
                child: Container(
                  width: 250,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    '${widget.description}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.black54,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 20,
                child: Container(
                  height: 30,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: AppColors.grey,
                  child: Text(
                    '${widget.language}',
                    style: TextStyle(
                      color: AppColors.white,
                      // fontSize: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                right: 20,
                child: Container(
                  height: 30,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: AppColors.grey,
                  child: Text(
                    '${widget.framework}',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                    ),
                  ),
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
    path
      ..quadraticBezierTo(0, size.height / 3, size.width, size.height / 2 - 10);
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
