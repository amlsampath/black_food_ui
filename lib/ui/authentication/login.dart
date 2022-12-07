import 'package:black_food_app/constants/color_constants.dart';
import 'package:black_food_app/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
/*       body: Container(
        //padding: EdgeInsets.all(10.0,),
        decoration: BoxDecoration(
          gradient: ColorConstants.appMainColor,
        ),
        child: Column(
          children: [],
        ),
      ), */
      body: SafeArea(
        child: Stack(
          children: [
            CustomPaint(
              size: Size(size.width, (size.width * 1.7009523228236607).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: ColorConstants.appMainColor,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                      const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                    child: Image.asset(
                      "assets/images/welcome-foods.png",
                      fit: BoxFit.fill,
                      width: size.width * .7,
                    ),
                  ),
                  const Text(
                    "Login to your account",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      fontFamily: "Poppins-Regular",
                    ),
                  ),
                  SizedBox(
                    height: size.height * .05,
                  ),
                  const CustomTextFormField(
                    label: 'info@flutterallinone.com',
                    prefixIcon: Icons.verified_user_sharp,
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .005,
                  ),
                  const CustomTextFormField(
                    label: '**************',
                    prefixIcon: Icons.lock_open,
                    radius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.blue[400],
                          fontFamily: "Poppins-Regular",
                        ),
                      ),
                      Container(
                        width: size.width * .3,
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(
                              10.0,
                            )),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins-Regular",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        // child: Container(
        //   decoration: BoxDecoration(
        //     gradient: ColorConstants.appMainColor,
        //   ),
        //   child: Container(
        //     padding: EdgeInsets.only(
        //       top: 20.0,
        //       left: 20.0,
        //       right: 20.0,
        //     ),
        //     child: Column(
        //       children: [
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Icon(
        //               Icons.arrow_back_ios_new,
        //               color: Colors.white,
        //             ),
        //             Icon(
        //               Icons.menu,
        //               color: Colors.white,
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
      //  backgroundColor: ColorConstants.appMainColor,
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 255, 179, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1523714, size.height * -0.0821221);
    path0.cubicTo(size.width * 0.2778571, size.height * -0.0950392, size.width * 0.4443143, size.height * -0.0340817, size.width * 0.4443143, size.height * 0.0895129);
    path0.cubicTo(size.width * 0.4443143, size.height * 0.1581803, size.width * 0.3567429, size.height * 0.2611310, size.width * 0.1523714, size.height * 0.2611310);
    path0.cubicTo(size.width * 0.0355714, size.height * 0.2611310, size.width * -0.1395429, size.height * 0.2096809, size.width * -0.1395429, size.height * 0.0895129);
    path0.cubicTo(size.width * -0.1395429, size.height * 0.0208959, size.width * -0.0674286, size.height * -0.0950392, size.width * 0.1523714, size.height * -0.0821221);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 249, 155, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(size.width * 0.8665714, size.height * 0.7778836);
    path1.cubicTo(size.width * 0.9867714, size.height * 0.7778836, size.width * 1.1672571, size.height * 0.8273684, size.width * 1.1672571, size.height * 0.9546585);
    path1.cubicTo(size.width * 1.1672571, size.height * 1.0253752, size.width * 1.0770286, size.height * 1.1314166, size.width * 0.8665714, size.height * 1.1314166);
    path1.cubicTo(size.width * 0.7462857, size.height * 1.1314166, size.width * 0.5659143, size.height * 1.0784379, size.width * 0.5659143, size.height * 0.9546585);
    path1.cubicTo(size.width * 0.5659143, size.height * 0.8839922, size.width * 0.6560286, size.height * 0.7778836, size.width * 0.8665714, size.height * 0.7778836);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
