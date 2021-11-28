import 'package:flutter/material.dart';
import 'package:flutter_ss_portfolio/util/util.dart';
import 'package:flutter_ss_portfolio/widgets/contact_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  final projectsList = [
    {
      'title': 'Actiscribe',
      'subtitle': 'An app developed for activity professionals.',
      'image':
          'https://raw.githubusercontent.com/Midnight-Sighs/ActiScribe_FrontEnd/main/src/Screenshots/Filter.png',
      'projectLink': 'https://github.com/Midnight-Sighs/ActiScribe_FrontEnd',
    },
    {
      'title': 'Acme Books',
      'subtitle': 'An e-commerce bookstore.',
      'image':
          'https://raw.githubusercontent.com/Midnight-Sighs/E-Commerce_Acme_Books_Front_End/main/Book%20Details.png',
      'projectLink':
          'https://github.com/Midnight-Sighs/E-Commerce_Acme_Books_Front_End',
    },
    {
      'title': 'YouTube Clone',
      'subtitle': 'A chat centric clone of YouTube ',
      'image':
          'https://raw.githubusercontent.com/Midnight-Sighs/YT_Clone_Front_End/main/Screenshots/RepliesExpanded.png',
      'projectLink': 'https://github.com/Midnight-Sighs/YT_Clone_Front_End',
    },
    {
      'title': 'Music Library',
      'subtitle': 'A simple music library application.',
      'image':
          'https://raw.githubusercontent.com/Midnight-Sighs/Music_Library_Frontend/main/screenshots/FullScreen.png',
      'projectLink': 'https://github.com/Midnight-Sighs/Music_Library_Frontend',
    },
    {
      'title': 'Trash Collector',
      'subtitle':
          'Those trash employees needed a better system for managing work!',
      'image':
          'https://raw.githubusercontent.com/Midnight-Sighs/Trash_Collector_Project/main/ScreenShots/CustomerHome.png',
      'projectLink':
          'https://github.com/Midnight-Sighs/Trash_Collector_Project',
    },
    {
      'title': 'SuperHeroes',
      'subtitle':
          'A very simple all Django/Python database app of superheroes.',
      'image':
          'https://raw.githubusercontent.com/Midnight-Sighs/Superheroes/main/Screenshots/SuperHeroHome.png',
      'projectLink':
          'https://github.com/Midnight-Sighs/E-Commerce_Acme_Books_Front_End',
    },
    {
      'title': 'Day Trip Generator',
      'subtitle': 'Very first, very simple straightforward JS app.',
      'image':
          'https://raw.githubusercontent.com/Midnight-Sighs/Day-Trip-Project/main/preview.png',
      'projectLink': 'https://github.com/Midnight-Sighs/Day-Trip-Project',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
              color: Colors.blueGrey.shade900,
              child: Column(children: [
                Expanded(
                    child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Image.asset(
                        'assets/images/LaptopCode.png',
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 0),
                          child: Text('I\'m a Coastal Kraken \n I make stuff!!',
                              style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.brown.shade700,
                                  fontWeight: FontWeight.w800)),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 280),
                            child: ContactButton(
                                buttonText: 'Say Hellow!',
                                icon: const Icon(Icons.message),
                                onPressed: () {
                                  launchMailto();
                                }),
                          ),
                        )
                      ],
                    )
                  ],
                ))
              ])),
        ),
        Expanded(
            child: Container(
                color: Colors.blueGrey.shade900,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Text('My Projects',
                        style: TextStyle(
                            color: Colors.brown.shade700,
                            fontSize: 35,
                            fontWeight: FontWeight.w700)),
                    Expanded(
                        child: ListView.builder(
                      itemCount: projectsList.length,
                      itemBuilder: (context, index) {
                        return Container(
                            color: Colors.black.withAlpha(25),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Card(
                                      color: Colors.black,
                                      elevation: 0.0,
                                      child: Column(
                                        children: [
                                          ListTile(
                                            title: Text(
                                                projectsList[index]['title']!,
                                                style: TextStyle(
                                                    color: Colors
                                                        .blueGrey.shade700)),
                                            leading: IconButton(
                                              color: Colors.blueGrey.shade700,
                                              icon: const Icon(Icons.link),
                                              onPressed: () => launch(
                                                  projectsList[index]
                                                      ['projectLink']!),
                                            ),
                                            subtitle: Text(
                                                projectsList[index]
                                                    ['subtitle']!,
                                                style: TextStyle(
                                                    color: Colors
                                                        .blueGrey.shade700)),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: Image.network(
                                                projectsList[index]['image']!),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          )
                                        ],
                                      )),
                                )
                              ],
                            ));
                      },
                    ))
                  ],
                )))
      ],
    );
  }
}
