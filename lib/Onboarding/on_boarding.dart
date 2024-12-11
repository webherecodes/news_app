import 'package:flutter/material.dart';
import 'package:newsapp/MainTab/maintabpage.dart';
import 'package:newsapp/Themes/colors.dart';

import '../CustomWidgets/Textfields/round_btn.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int selectedPage = 0;
  PageController controller = PageController();
  List pageArr = [
    {
      "title": "Get Every News At Time",
      "subtitle":
          "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
      "image": "assets/images/on_boarding_1.png"
    },
    {
      "title": "Fast and Furious News",
      "subtitle": "Fast food delivery to your home, office\nwhereever you are",
      "image": "assets/images/on_boarding_2.png"
    },
    {
      "title": "News Padikalama",
      "subtitle":
          "Real time tracking of your food on the app\nonce you placed ther order",
      "image": "assets/images/on_boarding_3.png"
    }
  ];

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        selectedPage = controller.page?.floor() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        PageView.builder(
            controller: controller,
            itemCount: pageArr.length,
            itemBuilder: (context, index) {
              var pObj = pageArr[index] as Map;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: media.width,
                    height: media.width,
                    alignment: Alignment.center,
                    child: Image.asset(
                      pObj["image"].toString(),
                      width: media.width * 0.65,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.15,
                  ),
                  Text(
                    pObj["title"].toString(),
                    style: TextStyle(
                        color: isDarkTheme
                            ? AppDarkColor.primaryText
                            : AppLightColor.primaryText,
                        fontSize: 28,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  Text(
                    pObj["subtitle"].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: isDarkTheme
                            ? AppDarkColor.secondaryText
                            : AppLightColor.secondaryText,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: media.width * 0.2,
                  ),
                ],
              );
            }),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: media.height * 0.6,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageArr.map((e) {
                  var index = pageArr.indexOf(e);
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        color: index == selectedPage
                            ? AppLightColor.primary
                            : AppLightColor.placeholder,
                        borderRadius: BorderRadius.circular(4)),
                  );
                }).toList()),
            SizedBox(
              height: media.height * 0.25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                  fontSize: 18,
                  onPressed: () {
                    if (selectedPage >= 2) {
                      // Home Sceen
                      print("Go Home");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainTabPage()));
                    } else {
                      setState(() {
                        selectedPage = selectedPage + 1;
                        controller.animateToPage(selectedPage,
                            duration: Duration(microseconds: 500),
                            curve: Curves.bounceInOut);
                      });
                    }
                  },
                  title: "Next"),
            ),
          ],
        )
      ]),
    );
  }
}
