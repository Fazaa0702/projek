// import 'package:daily_healthy_habit_mobile/splash_screen/secion/page1.dart';
// import 'package:daily_healthy_habit_mobile/splash_screen/secion/page2.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// import '../secion/page3.dart';
// import '../secion/page4.dart';
// import '../secion/splash_screen.dart';
//
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//
//   final _controller=PageController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       backgroundColor: Color(0xFFffffff),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//
//           SizedBox(
//               height: 800,
//               child: PageView(
//                 controller: controller,
//                 children: [
//                   SplashScreen(),
//                   Page1(),
//                   Page2(),
//                   Page3(),
//                   Page4(),
//                 ],
//               ),
//             ),
//           SmoothPageIndicator(
//               controller: _controller,
//               count: 5,
//               effect: SlideEffect(
//                 activeDotColor: Color(0xFF7D2137),
//                 dotColor: Color(0xFFE57D90),
//                 dotHeight: 20,
//                 dotWidth: 20,
//               ),
//           ),
//         ],
//       )
//       // appBar: AppBar(
//       //   title: Text("Splashh Screen"),
//       // ),
//       // body: Center(
//       //   child: Text("Home Page"),
//       // ),
//     );
//   }
// }
