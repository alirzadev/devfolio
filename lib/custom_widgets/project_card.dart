import 'package:devfolio/utilities/app_colors.dart';
import 'package:devfolio/utilities/responsive.dart';
import 'package:devfolio/utilities/url_launer.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String image;
  final String url;

  ProductCard({Key key, this.image, this.url}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  double spreadRadius = 2.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: !isMobile(context) ? 40 : 0,
        bottom: isMobile(context) ? 30 : 0,
      ),
      child: InkWell(
        onTap: () {
          //launchUrl
          UrlLauncher(url: widget.url).launchUrl();
        },
        onHover: (isHovering) {
          if (isHovering) {
            setState(() {
              spreadRadius = 4.0;
            });
          } else {
            setState(() {
              spreadRadius = 2.0;
            });
          }
        },
        child: Container(
          width: 220,
          height: 220,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.red.withOpacity(.75)),
            boxShadow: [
              BoxShadow(
                color: AppColors.grey.withOpacity(.25),
                spreadRadius: spreadRadius,
                blurRadius: 10,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
              widget.image,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
