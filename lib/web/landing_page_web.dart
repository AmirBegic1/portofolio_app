import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:portofolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  LandingPageWeb({Key? key}) : super(key: key);

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  urlLuncher(String imgPath, String url) {
    return IconButton(
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
      icon: SvgPicture.asset(
        imgPath,
        color: Colors.black,
        width: 35.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.red,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/amir.jpeg"),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SansBold("Amir Begić", 30.0),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLuncher(
                  "assets/instagram.svg",
                  "https://www.instagram.com/amir.begic_/",
                ),
                urlLuncher(
                    "assets/github.svg", "https://github.com/AmirBegic1"),
                //   urlLuncher(
                //     "assets/linkedin2.svg",
                //     "https://www.linkedin.com/in/amir-begi%C4%871/",
                //   ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Works"),
            Spacer(),
            TabsWeb("Blog"),
            Spacer(),
            TabsWeb("About"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          //prvi dio
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: SansBold("Hello I'm", 15),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    SansBold("Amir Begić", 55),
                    Sans("Software engineer", 30),
                    Sans("-Flutter developer-", 23),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 20,
                        ),
                        Sans("amir.begic12@gmail.com", 15),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(
                          width: 20,
                        ),
                        Sans("+387 62 653 693", 15),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 20,
                        ),
                        Sans("Zenica, BiH", 15),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 143,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundImage: AssetImage("assets/amir.jpeg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //drugi dio
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/web.jpg", height: widthDevice / 1.9),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 40),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                        "Hello! I'm Begić Amir and I am Software engineer building mobile apps with Flutter",
                        15),
                    Sans(
                        "I am a young ambitious person witch fell in love with building",
                        15),
                    Sans(
                        "mobile apps for Andorid and iOS using Flutter ;)", 15),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("Flutter", 15),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("Firebase", 15),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("REST Api", 15),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("Android", 15),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                              style: BorderStyle.solid,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(7),
                          child: Sans("iOS", 15),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          //treci dio
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What I do?", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCardWeb(
                      imagePath: "assets/webL.png",
                      text: "Web development",
                    ),
                    AnimatedCardWeb(
                      imagePath: "assets/app.png",
                      text: "App development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCardWeb(
                      imagePath: "assets/firebase.png",
                      text: "Back-end development",
                    ),
                  ],
                ),
              ],
            ),
          ),

          //cetvrti dio
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact me", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          containerWidth: 350,
                          text: "First name",
                          hintText: "Please type your first name",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextForm(
                          containerWidth: 350,
                          text: "Email",
                          hintText: "Please type your email",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          containerWidth: 350,
                          text: "Last name",
                          hintText: "Please type your last name",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextForm(
                          containerWidth: 350,
                          text: "Phone number",
                          hintText: "Please type your phone number",
                        ),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  text: "Message",
                  containerWidth: widthDevice / 1.5,
                  hintText: "Please type your message",
                  maxLine: 10,
                ),
                MaterialButton(
                  onPressed: () {},
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.red,
                  child: SansBold("Submit", 20.0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
