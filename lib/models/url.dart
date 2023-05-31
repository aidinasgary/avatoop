import 'dart:math';

import 'package:url_launcher/url_launcher.dart';

mylauncherUrl(String url) async {
  var uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    log("could not launch ${uri.toString()}" as num);
  }
}

class myString {
  static const baseUtl = "https://www.youtube.com/";
  static const String siteUrl = "https://www.youtube.com/watch?v=se8CeCppb84";
}
