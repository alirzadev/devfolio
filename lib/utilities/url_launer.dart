import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  final String url;

  UrlLauncher({@required this.url});
  void launchUrl() async {
    try {
      await canLaunch(url) ? await launch(url) : throw 'Could not launch url $url';
    } catch (e) {
      print('Exception thrown by custom UrlLauncher class $e');
    }
  }
}
