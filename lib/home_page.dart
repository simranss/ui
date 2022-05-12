import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  _launchURL() async {
    var url = Uri(scheme: 'https', host: 'flutter.dev');
    if (!await launchUrl(url)) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.grey.shade900,
        ),
        actions: [
          Icon(
            Icons.more_vert_rounded,
            color: Colors.grey.shade900,
          )
        ],
        title: const Text(""),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(children: [
        Expanded(
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/me.jpg'),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Simran Sharma',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                offset: const Offset(2, 2),
                                blurRadius: 3,
                              )
                            ]),
                        child: Image.asset(
                          'assets/linkedin.png',
                          width: 18,
                        ),
                      ),
                      onTap: () {
                        debugPrint('Tapped');
                        _launchURL();
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                offset: const Offset(2, 2),
                                blurRadius: 3,
                              )
                            ]),
                        child: Image.asset(
                          'assets/linkedin.png',
                          width: 18,
                        ),
                      ),
                      onTap: () {
                        debugPrint('Tapped');
                        _launchURL();
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                offset: const Offset(2, 2),
                                blurRadius: 3,
                              )
                            ]),
                        child: Image.asset(
                          'assets/insta.png',
                          width: 18,
                        ),
                      ),
                      onTap: () {
                        debugPrint('Tapped');
                        _launchURL();
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                offset: const Offset(2, 2),
                                blurRadius: 3,
                              )
                            ]),
                        child: Image.asset(
                          'assets/linkedin.png',
                          width: 18,
                        ),
                      ),
                      onTap: () {
                        debugPrint('Tapped');
                        _launchURL();
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(40),
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              color: Colors.grey.shade900,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Skill",
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
                ),
                Wrap()
              ],
            ),
          ),
        )
      ]),
    );
  }
}
