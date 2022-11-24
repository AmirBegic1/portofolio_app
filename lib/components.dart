import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final title;
  const TabsWeb(this.title, {Key? key}) : super(key: key);

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class TabsMobile extends StatefulWidget {
  final text;
  final route;
  TabsMobile({
    Key? key,
    @required this.text,
    @required this.route,
  }) : super(key: key);

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
        // print("Entered");
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
        // print("exit");
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(microseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected
            ? GoogleFonts.oswald(
                shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(0, -8),
                    ),
                  ],
                fontSize: 25.0,
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.black)
            : GoogleFonts.oswald(color: Colors.black, fontSize: 20.0),
        child: Text(
          widget.title,
          // style: GoogleFonts.oswald(
          //   color: Colors.black,
          //   fontSize: 23.0,
          // ),
        ),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold(this.text, this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;
  const Sans(this.text, this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.openSans(
        fontSize: size,
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final text;
  final containerWidth;
  final hintText;
  final maxLine;

  const TextForm({
    Key? key,
    @required this.text,
    @required this.containerWidth,
    @required this.hintText,
    this.maxLine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(text, 16.0),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: containerWidth,
          child: TextFormField(
            // inputFormatters: [
            //   LengthLimitingTextInputFormatter(10),
            //   FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
            // ],
            maxLines: maxLine == null ? null : maxLine,
            decoration: InputDecoration(
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),
            // validator: (text) {
            //   if (RegExp("\\bamir\\b", caseSensitive: false)
            //       .hasMatch(text.toString())) {
            //     return "Match found";
            //   }
            // },
            // autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
      ],
    );
  }
}

class AnimatedCardWeb extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final witdh;
  const AnimatedCardWeb(
      {super.key,
      @required this.imagePath,
      @required this.text,
      this.fit,
      this.reverse,
      this.height,
      this.witdh});

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 4),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: Colors.red,
          ),
        ),
        shadowColor: Colors.red,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height == null
                    ? 200.0
                    : widget.height, //null handling
                width: widget.witdh == null ? 200.0 : widget.witdh,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(
                height: 10,
              ),
              SansBold(widget.text, 15.0),
            ],
          ),
        ),
      ),
    );
  }
}
