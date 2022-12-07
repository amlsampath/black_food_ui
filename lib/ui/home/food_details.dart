import 'package:black_food_app/constants/color_constants.dart';
import 'package:black_food_app/widget/text_bg_box.dart';
import 'package:flutter/material.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  List<String> imageList = [
    "https://img.freepik.com/free-photo/top-view-pepperoni-pizza-sliced-into-six-slices_141793-2157.jpg?w=2000",
    "https://img.freepik.com/free-photo/top-view-whole-pepperoni-pizza-with-sesame-sprinkles-top_141793-2179.jpg?w=2000",
    "https://images.creativemarket.com/0.1.0/ps/6877647/1820/1213/m1/fpnw/wm1/qflyey0kowazmc9h5ig8hsatsklo5funxedy9tajezkunnaojhsfruugzj5d4f8x-.jpg?1566766305&s=f1763395da7c824034d1067faf4970d5",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQry4ORbQONbVDti3dQfGr45xzL1Te2krC92XLdXbia4xnR8BrxnOm0tAOiEadPIemCPzc&usqp=CAU",
  ];

  String selectedMeal = "small";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                gradient: ColorConstants.appMainColor,
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 20.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            ),
                            Text(
                              "FoodSpring",
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                            const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * .05,
                      ),
                      SizedBox(
                        height: size.height * .3,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: imageList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      100.0,
                                    ),
                                    child: Image.network(
                                      imageList[index],
                                      width: size.width * .6,
                                      height: size.height * .3,
                                      fit: BoxFit.cover,
                                    )),
                              );
                            }),
                      ),
                      SizedBox(
                        height: size.height * .05,
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      // height: size.height * .5,
                      width: size.width,
                      padding: EdgeInsets.only(
                        top: 30.0,
                        left: 15,
                        right: 25,
                      ),
                      decoration: BoxDecoration(
                          color: ColorConstants.mainColor1,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                50.0,
                              ),
                              topRight: Radius.circular(
                                50.0,
                              ))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Soaghetti",
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Condensed water",
                                    style: TextStyle(
                                      color: Colors.white30,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        "4.8",
                                        style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "34765 reviews",
                                    style: TextStyle(
                                      color: Colors.white30,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * .02,
                          ),
                          Text(
                            "Food Description:",
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ),
                          Text(
                            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without:",
                            style: TextStyle(
                              color: Colors.white30,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: size.height * .03,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white30,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                /**/ TextBgBox(
                                  onClick: () {
                                    setState(() {
                                      selectedMeal = "small";
                                    });
                                  },
                                  isSelected: selectedMeal == "small",
                                  title: "small",
                                ),
                                TextBgBox(
                                  onClick: () {
                                    setState(() {
                                      selectedMeal = "medium";
                                    });
                                  },
                                  isSelected: selectedMeal == "medium",
                                  title: "medium",
                                ),
                                TextBgBox(
                                  onClick: () {
                                    setState(() {
                                      selectedMeal = "large";
                                    });
                                  },
                                  isSelected: selectedMeal == "large",
                                  title: "large",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size.height * .03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "${String.fromCharCodes(Runes('\u0024'))}5,60",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontFamily: "Poppins-Regular",
                                    ),
                                  ),
                                  Text(
                                    "/pizza",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: "Poppins-Regular",
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: size.width * .4,
                                padding: const EdgeInsets.all(
                                  10.0,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.orange[600],
                                    borderRadius: BorderRadius.circular(
                                      20.0,
                                    )),
                                child: const Text(
                                  "Order Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins-Regular",
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * .03,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}
