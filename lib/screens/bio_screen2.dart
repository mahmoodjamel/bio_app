import 'package:flutter/material.dart';

import 'bio_screen.dart';

class BioScreenTow extends StatelessWidget {
  const BioScreenTow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return BioScreen();
          }
          ));},icon:Icon(Icons.arrow_forward))
          // PopupMenuButton(
          //   color: Colors.white,
          //   offset: Offset(0, 40),
          //   itemBuilder: (BuildContext context) {
          //     return [
          //       PopupMenuItem(
          //           onTap: () {
          //             Navigator.push(context,MaterialPageRoute(builder: (context) {
          //               return BioScreen();
          //             }));
          //           },
          //           child: Text('My Profile')),
          //     ];
          //   },
          // )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Your Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/s3.png',
              fit: BoxFit.cover,
              height: 250,
              width: double.infinity,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 140,
                ),
                CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/images/s2.jpg'),
                ),
                Text(
                  'Mahmoud Awad Allah',
                  style: TextStyle(
                      fontFamily: 'Mukta',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'studying in vision plus',
                  style: TextStyle(color: Colors.grey[900]),
                ),
                Divider(
                  height: 30,
                  color: Colors.grey,
                  endIndent: 60,
                  indent: 60,
                ),
                CardWidget(
                    title: 'Email',
                    subTitle: "mahmoudawadallah@Gmail.com",
                    iconLeading: Icons.email_outlined,
                    Colorss2: Colors.red,
                    iconTraling: Icons.send,
                    Colorss: Colors.blue,
                    onPresed: () {}),
                CardWidget(
                    title: "Phone",
                    subTitle: '0592169398',
                    iconLeading: Icons.phone,
                    Colorss2: Colors.green,
                    iconTraling: Icons.phone_in_talk_outlined,
                    Colorss: Colors.green,
                    onPresed: () {}),
                CardWidget(
                    title: "Facebook",
                    subTitle: 'Mahmoud Awad Allah',
                    iconLeading: Icons.facebook,
                    Colorss2: Colors.blue,
                    iconTraling: Icons.arrow_forward_ios,
                    Colorss: Colors.blue,
                    onPresed: () {}),
                CardWidget(
                    title: "location",
                    subTitle: 'Gaza',
                    iconLeading: Icons.place,
                    Colorss2: Colors.red,
                    iconTraling: Icons.arrow_forward_ios,
                    Colorss: Colors.blue,
                    onPresed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  CardWidget({
    required this.title,
    required this.subTitle,
    required this.iconLeading,
    required this.iconTraling,
    required this.onPresed,
    required this.Colorss,
    required this.Colorss2,
    Key? key,
  }) : super(key: key);

  String title;
  String subTitle;
  IconData iconLeading;
  IconData iconTraling;
  Function() onPresed;
  Color Colorss;
  Color Colorss2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        elevation: 5,
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              iconLeading,
              color: Colorss2,
            ),
          ),
          title: Text(title),
          subtitle: Text(subTitle),
          trailing: IconButton(
              onPressed: onPresed, icon: Icon(iconTraling, color: Colorss)),
        ),
      ),
    );
  }
}
