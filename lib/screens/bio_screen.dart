import 'dart:ui';

import 'package:bio_app/widget/bio_card.dart';
import 'package:flutter/material.dart';

import 'bio_screen2.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actionsIconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return BioScreenTow();
          }
          ));},icon:Icon(Icons.arrow_forward))
          // PopupMenuButton(
          //   enabled: true,
          //   color: Colors.white,
          //   offset: Offset(0, 40),
          //   itemBuilder: (BuildContext context) {
          //     return [
          //       PopupMenuItem(
          //           enabled: true,
          //           onTap: () {
          //             Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          //               return BioScreenTow();
          //             }
          //             ));
          //           },
          //           child: Text('My Profile')),
          //     ];
          //   },
          // )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Bio App',
          style: TextStyle(
              fontFamily: 'Mukta',
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: Stack(children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Image.network(
            'https://user-images.githubusercontent.com/22755228/114203916-48f7aa00-9961-11eb-82b1-fd5b540f28ff.jpeg',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/face.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Student',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 24),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Flutter Course',
              style:
                  TextStyle(fontSize: 18, color: Colors.white, letterSpacing: 1),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
              height: 50,
              endIndent: 20,
              indent: 20,
            ),
            BioWidget(
                leadingIcon: Icons.email,
                title: 'Email',
                subTitle: 'mahmoudawadallah@Gmail.com',
                trailingIcon: Icons.send,marginBottom: 20,
            onPressed: (){},),
            BioWidget(
                leadingIcon: Icons.phone,
                title: 'Phone',
                subTitle: '0592169398',
                trailingIcon: Icons.phone_in_talk_outlined,
            onPressed: (){},),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Vision Plus'),
            ),

          ],
        )
      ]),
    );
  }
}
