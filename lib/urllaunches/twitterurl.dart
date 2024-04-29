import 'package:url_launcher/url_launcher.dart';

twitterUrl () async
{
  const url = "https://twitter.com/i/flow/login?redirect_after_login=%2FLocal_Shouts";

  if(await canLaunchUrl(Uri.parse(url)))
  {
    await launchUrl(Uri.parse(url));
  }
  else 
  {
    throw "url not found $url";
  }
}