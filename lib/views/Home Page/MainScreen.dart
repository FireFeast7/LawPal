// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:lawpal/views/Home%20Page/BottomNavBar.dart';
import 'package:lawpal/views/Home%20Page/profile.dart';

class MainScreen extends StatelessWidget {
  final List<Profile> profiles = [
    Profile(
      name: 'John Doe',
      info: 'Lawyer at XYZ Law Firm',
      profileImage: 'images/icon.png',
    ),
    Profile(
      name: 'Jane Smith',
      info: 'Legal Consultant',
      profileImage: 'images/icon.png',
    ),
    Profile(
      name: 'John Doe',
      info: 'Lawyer at XYZ Law Firm',
      profileImage: 'images/icon.png',
    ),
    Profile(
      name: 'Jane Smith',
      info: 'Legal Consultant',
      profileImage: 'images/icon.png',
    ),
    Profile(
      name: 'John Doe',
      info: 'Lawyer at XYZ Law Firm',
      profileImage: 'images/icon.png',
    ),
    Profile(
      name: 'Jane Smith',
      info: 'Legal Consultant',
      profileImage: 'images/icon.png',
    ),
  ];
  final List<String> cardData = [
    "Import A Certification",
    "Build Your Portfolio",
    "Get tips to Get Work"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Clients"),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.21,
              width: MediaQuery.of(context).size.width,
              child: Swiper(
                itemWidth: 200,
                itemHeight: 200,
                viewportFraction: 0.6,
                itemCount: cardData.length,
                layout: SwiperLayout.DEFAULT,
                itemBuilder: (context, index) => Cards(text: cardData[index]),
              ),
            ),
            Divider(height: 10),
            SizedBox(
              height: 50,
            ),
            Divider(
              height: 10,
            ),
            TabBar(
              tabs: [
                Tab(text: "Best Matches"),
                Tab(text: "Most Recent"),
              ],
            ),
            Container(
              child: Expanded(
                child: TabBarView(
                  children: [
                    ListView.builder(
                      itemCount: profiles.length,
                      itemBuilder: (context, index) {
                        return CardWithProfile(
                          profile: profiles[index],
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: profiles.length,
                      itemBuilder: (context, index) {
                        return CardWithProfile(
                          profile: profiles[index],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final String text;
  Cards({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        color: Colors.amber,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

class CardWithProfile extends StatelessWidget {
  final Profile profile;

  CardWithProfile({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(profile.profileImage),
        ),
        title: Text(profile.name),
        subtitle: Text(profile.info),
        trailing: ElevatedButton(
          onPressed: () {
          },
          child: Text('Accept'),
        ),
      ),
    );
  }
}
