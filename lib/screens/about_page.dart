import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);

  final appBar = AppBar(
    title: const Text('About'),
    centerTitle: true,
  );

  launchMail(String email) async {
    await launch(
      'mailto:$email?subject=News&body=New%20plugin',
    );
  }

  launchPhoneCall(String phone) async {
    await launch('tel:$phone');
  }
  // Future<void> _makePhoneCall(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  Widget buildListTile({Icon? icon, String? title, Function()? function}) {
    return GestureDetector(
      onTap: function,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        margin: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
        child: ListTile(
          leading: icon,
          title: Text(title!),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        color: Colors.deepPurple,
        width: double.infinity,
        height: (MediaQuery.of(context).size.height -
                appBar.preferredSize.height -
                MediaQuery.of(context).padding.top) *
            1,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png'),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text('Mr. Ram Jha'),
            const SizedBox(
              height: 5,
            ),
            const Text('Certified Astrologer'),
            const SizedBox(
              height: 5,
            ),
            const Text('Astro-Council Nepal'),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text('About Us'),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 10),
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Rhoncus mattis rhoncus urna neque. Pharetra et ultrices neque ornare aenean euismod elementum nisi quis. Pharetra vel turpis nunc eget lorem dolor sed. Felis eget velit aliquet sagittis. Turpis tincidunt id aliquet risus feugiat in ante metus. Nec sagittis aliquam malesuada bibendum.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    buildListTile(
                      icon: const Icon(Icons.phone),
                      title: '9012345612',
                      function: () => launchPhoneCall('9012345612'),
                    ),
                    buildListTile(
                      icon: const Icon(Icons.email_outlined),
                      title: 'aboutus@gmail.com',
                      function: () => launchMail('aboutus@gmail.com'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
