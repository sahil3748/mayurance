import 'package:url_launcher/url_launcher.dart';

void launchURL(String urlToReach) async {
  if (await canLaunch(urlToReach)) {
    await launch(urlToReach);
  } else {
    throw 'Could not launch';
  }
}
