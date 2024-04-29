import 'package:url_launcher/url_launcher.dart';

facebookUrl () async
{
  const url = "https://www.facebook.com/Local-Shouts-432366370865565";
  if(await canLaunchUrl(Uri.parse(url)))
  {
    await launchUrl(Uri.parse(url));

  }
  else
  {
    throw "url not found $url";
  }

}