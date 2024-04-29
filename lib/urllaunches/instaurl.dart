import 'package:url_launcher/url_launcher.dart';

instaUrl () async
{
  const url = "https://www.instagram.com/local.shouts/";

  if(await canLaunchUrl(Uri.parse(url)))
  {
     await launchUrl(Uri.parse(url));
  }
  else
  {
    throw "url not found $url";
  }
}