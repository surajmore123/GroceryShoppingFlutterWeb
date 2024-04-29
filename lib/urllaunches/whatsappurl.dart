import 'package:url_launcher/url_launcher.dart';

whatsappurl  () async
{
  const url = "https://api.whatsapp.com/send?phone=917066660033&text=I%27m%20looking%20for%20Grocery%20products";
  if(await canLaunchUrl(Uri.parse(url)))
  {
     await launchUrl(Uri.parse(url));
  }
  else{
    throw "url not foun";
  }
}



