import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:opso/home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: width,
                    height: height / 2,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/landing.webp"),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    child: DefaultTextStyle(
                      style: TextStyle(
                        fontSize: width / 19,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            'Unlock your potential',
                            textStyle: TextStyle(
                                fontSize: width / 12,
                                fontWeight: FontWeight.w900),
                            colors: [
                              const Color.fromRGBO(255, 183, 77, 1),
                              const Color.fromARGB(255, 231, 225, 208)
                            ],
                          ),
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                Center(
                  child: SizedBox(
                    child: Text(
                      "Contribute to Open Source",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: width / 18),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 30)),
                Center(
                  child: SizedBox(
                    width: width / 1.5,
                    height: height / 10,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(255, 183, 77, 1),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text(
                        "Get started",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                (width < height) ? width / 19 : height / 19),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
