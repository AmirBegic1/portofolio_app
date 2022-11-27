import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWeb extends StatefulWidget {
  ContactWeb({Key? key}) : super(key: key);

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.red,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage("assets/amir.jpeg"),
              ),
            ),
            SizedBox(height: 15.0),
            SansBold("Amir Begić", 30.0),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async {
                    await launch("https://www.instagram.com/amir.begic_/");
                  },
                  icon: SvgPicture.asset("asstes/instagram.png",
                      color: Colors.black, width: 35.0),
                ),
                IconButton(
                  onPressed: () async {
                    await launch("https://github.com/AmirBegic1");
                  },
                  icon: SvgPicture.asset("assets/github.svg",
                      color: Colors.black, width: 35.0),
                ),
                IconButton(
                  onPressed: () async {
                    await launch("https://www.instagram.com/amir.begic_/");
                  },
                  icon: SvgPicture.asset("asstes/instagram.png",
                      color: Colors.black, width: 35.0),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                color: Colors.black,
                size: 25.0,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: Row(
                children: [
                  Spacer(flex: 3),
                  TabsWeb(title: "Home", route: '/'),
                  Spacer(),
                  TabsWeb(title: "Works", route: '/works'),
                  Spacer(),
                  TabsWeb(title: "Blog", route: '/blog'),
                  Spacer(),
                  TabsWeb(title: "About", route: '/about'),
                  Spacer(),
                  TabsWeb(title: "Contact", route: '/contact'),
                  Spacer(),
                ],
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.0),
              SansBold("Contact me", 40.0),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      TextForm(
                          text: "First name",
                          containerWidth: 350.0,
                          hintText: "Please type first name"),
                      SizedBox(height: 15.0),
                      TextForm(
                          text: "Email",
                          containerWidth: 350.0,
                          hintText: "Please type email address"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextForm(
                          text: "Last name",
                          containerWidth: 350.0,
                          hintText: "Please type last name"),
                      SizedBox(height: 15.0),
                      TextForm(
                          text: "Phone number",
                          containerWidth: 350.0,
                          hintText: "Please type phone number"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              TextForm(
                  text: "Message",
                  containerWidth: widthDevice / 1.5,
                  hintText: "Message:",
                  maxLine: 10),
              SizedBox(height: 20.0),
              MaterialButton(
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                height: 60.0,
                minWidth: 200.0,
                color: Colors.red,
                child: SansBold("Submit", 20.0),
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
