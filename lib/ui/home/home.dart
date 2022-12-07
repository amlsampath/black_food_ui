import 'package:black_food_app/constants/color_constants.dart';
import 'package:black_food_app/widget/text_bg_box.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedMeal = "breakfast";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0,
        ),
        decoration: BoxDecoration(
          gradient: ColorConstants.appMainColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
                Row(
                  children: [
                    Text(
                      "Maria",
                      style: TextStyle(color: Colors.white30),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      child: Image.network(
                        "https://www.stockvault.net/data/2019/09/02/269196/preview16.jpg",
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: size.height * .02,
            ),
            const Text(
              "FoodSpring",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                fontFamily: "Poppins-Bold",
              ),
            ),
            Text(
              "Condensed water",
              style: TextStyle(
                fontFamily: "Poppins-Regular",
                color: Colors.white30,
              ),
            ),
            SizedBox(
              height: size.height * .04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                /**/ TextBgBox(
                  onClick: () {
                    setState(() {
                      selectedMeal = "breakfast";
                    });
                  },
                  isSelected: selectedMeal == "breakfast",
                  title: "breakfast",
                ),
                TextBgBox(
                  onClick: () {
                    setState(() {
                      selectedMeal = "lunch";
                    });
                  },
                  isSelected: selectedMeal == "lunch",
                  title: "lunch",
                ),
                TextBgBox(
                  onClick: () {
                    setState(() {
                      selectedMeal = "dinner";
                    });
                  },
                  isSelected: selectedMeal == "dinner",
                  title: "dinner",
                ),
              ],
            ),
            SizedBox(
              height: size.height * .015,
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                  child: Image.network(
                    "https://thumbs.dreamstime.com/b/classic-homemade-italian-spaghetti-pasta-tomato-sauce-cheese-parmesan-basil-dark-stone-table-top-view-flat-lay-218417492.jpg",
                    height: size.height * .55,
                    width: size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextBgBox(
                          onClick: () {},
                          isSelected: true,
                          bgColor: Colors.black87,
                          title: "${String.fromCharCodes(Runes('\u0024'))}5,600",
                        ),
                        TextBgBox(
                          onClick: () {},
                          isSelected: true,
                          bgColor: Colors.black87,
                          title: "min 30",
                        ),
                      ],
                    )),
                Positioned(
                    bottom: 20,
                    left: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Soaghetti",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Condensed water",
                          style: TextStyle(
                            fontFamily: "Poppins-Regular",
                            color: Colors.white30,
                          ),
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
