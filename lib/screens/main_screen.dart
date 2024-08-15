import 'package:faq_accordion_card/components/accordion_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(166, 93, 231, 1),
                Color.fromRGBO(112, 89, 229, 1)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 10,
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 10),
                      )
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 150),
                        Text(
                          "FAQ",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(32, 31, 51, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        AccordionItem(
                            title: "How many team members can I invite?"),
                        Divider(
                          thickness: 1,
                          color: Color.fromRGBO(229, 229, 229, 1),
                        ),
                        AccordionItem(
                          title: "What is the maximum file upload size?",
                          isOpen: true,
                        ),
                        Text(
                          "No more than 2GB. All files in your account must fit your allotted storage space.",
                          style: TextStyle(
                            color: Color.fromRGBO(141, 141, 141, 1),
                            height: 1.3,
                          ),
                        ),
                        SizedBox(height: 10),
                        Divider(
                          thickness: 1,
                          color: Color.fromRGBO(229, 229, 229, 1),
                        ),
                        AccordionItem(title: "How do I reset my password?"),
                        Divider(
                          thickness: 1,
                          color: Color.fromRGBO(229, 229, 229, 1),
                        ),
                        AccordionItem(title: "Can I cancel my subscription?"),
                        Divider(
                          thickness: 1,
                          color: Color.fromRGBO(229, 229, 229, 1),
                        ),
                        AccordionItem(
                            title: "Do you provide additional support?")
                      ],
                    ),
                  ),
                ),
                SvgPicture.asset("assets/images/Background.svg"),
                Transform.translate(
                  offset: const Offset(0, -110),
                  child: SvgPicture.asset("assets/images/Woman.svg"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
