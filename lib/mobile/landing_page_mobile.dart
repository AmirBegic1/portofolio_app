import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  LandingPageMobile({Key? key}) : super(key: key);

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  crveniContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var widhtDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 35.0,
          color: Colors.black,
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.0, color: Colors.black),
                ),
                child: Image.asset("assets/amir.jpeg"),
              ),
            ),
            TabsMobile(text: "Home", route: '/'),
            SizedBox(height: 20.0),
            TabsMobile(text: "Works", route: '/works'),
            SizedBox(height: 20.0),
            TabsMobile(text: "Blog", route: '/blog'),
            SizedBox(height: 20.0),
            TabsMobile(text: "About", route: '/'),
            SizedBox(height: 20.0),
            TabsMobile(text: "Contact", route: '/'),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async =>
                      await launch("https://www.instagram.com/amir.begic_/"),
                  icon: SvgPicture.asset(
                    "assets/instagram.svg",
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async =>
                      await launch("https://github.com/AmirBegic1"),
                  icon: SvgPicture.asset(
                    "assets/github.svg",
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async => await launch(
                      "https://www.linkedin.com/in/amir-begi%C4%871/"),
                  icon: SvgPicture.asset(
                    "assets/twitter.svg",
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          //intro First section
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 117.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage("assets/amir.jpeg"),
                  ),
                ),
                SizedBox(height: 25.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: SansBold("Hello I'm", 15.0),
                    ),
                    SansBold("Amir Begić", 40.0),
                    Sans("Software engineer", 27.0),
                    Sans("- Flutter developer - ", 22.0),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.call),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(width: 40.0),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        Sans("amir.begic12@gmail.com", 15.0),
                        Sans("+387 62 653 693", 15.0),
                        Sans("Zenica, BiH", 15.0),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70.0,
          ),
          //drugi dio stranice about me
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold("About me", 35.0),
                SizedBox(height: 30.0),
                Sans(
                    "Hello! I'm Begić Amir and I am Software engineer building mobile apps with Flutter",
                    15.0),
                Sans(
                    "I am a young ambitious person witch fell in love with building mobile apps for Andorid and iOS using Flutter ;)",
                    15.0),
                // Sans("mobile apps for Andorid and iOS using Flutter ;)", 15.0),
                SizedBox(height: 30.0),
                Wrap(
                  spacing: 7.0,
                  runSpacing: 7.0,
                  children: [
                    crveniContainer("Flutter"),
                    crveniContainer("Firebase"),
                    crveniContainer("REST Api"),
                    crveniContainer("Andorid"),
                    crveniContainer("iOS"),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 60.0),
          //treci dio sta ja radim?
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold("What I do?", 35.0),
              AnimatedCardWeb(
                imagePath: "assets/webL.png",
                text: "Web development",
                witdh: 300.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCardWeb(
                imagePath: "assets/app.png",
                text: "App development",
                fit: BoxFit.contain,
                reverse: true,
                witdh: 300.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCardWeb(
                imagePath: "assets/firebase.png",
                text: "Back-end development",
                witdh: 300.0,
              ),
              SizedBox(height: 60.0),
              //contat dio stranice 4 dio
              Wrap(
                runSpacing: 20.0,
                spacing: 20.0,
                alignment: WrapAlignment.center,
                children: [
                  SansBold("Contact me", 35.0),
                  TextForm(
                      text: "First Name",
                      containerWidth: widhtDevice / 1.4,
                      hintText: "Please type first name"),
                  TextForm(
                      text: "Last Name",
                      containerWidth: widhtDevice / 1.4,
                      hintText: "Please type last name"),
                  TextForm(
                      text: "Email",
                      containerWidth: widhtDevice / 1.4,
                      hintText: "Please type email address"),
                  TextForm(
                      text: "Phone number",
                      containerWidth: widhtDevice / 1.4,
                      hintText: "Please type your phone number"),
                  TextForm(
                    text: "Message",
                    containerWidth: widhtDevice / 1.4,
                    hintText: "Message:",
                    maxLine: 10,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 60.0,
                    minWidth: widhtDevice / 2.2,
                    color: Colors.red,
                    child: SansBold("Submit", 20.0),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ],
      ),
    );
  }
}
