// import 'package:app/app/app.dart';
// import 'package:app/app/constant/system.dart';
// import 'package:app/app/core/navigator_core.dart';
// import 'package:byson_aspect_ratio/byson_aspect_ratio.dart';
// import 'package:byson_cupertino_button/byson_cupertino_button.dart';
// import 'package:flutter/material.dart';
// import 'package:iconsax_plus/iconsax_plus.dart';
//
// import 'page/exercise_page.dart';
// import 'page/exercise_threshold_type.dart';
// import 'page/exercise_type_page.dart';
// import 'page/muscle_page.dart';
//
// class SQLitePage extends StatelessWidget {
//   const SQLitePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(
//           0xFF344BC1,
//         ),
//         surfaceTintColor: const Color(
//           0xFF344BC1,
//         ),
//         automaticallyImplyLeading: false,
//         scrolledUnderElevation: 0,
//         elevation: 0,
//         systemOverlayStyle: systemUiOverlayStyleLight,
//         flexibleSpace: SafeArea(
//           child: BysonAspectRatio(
//             designWidth: designWidth,
//             designHeight: 56,
//             builder: (converter) => Stack(
//               children: [
//                 Center(
//                   child: Text(
//                     'SQLite',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       height: 1.5,
//                       fontSize: converter.h(
//                         20,
//                       ),
//                       color: Colors.white,
//                       fontWeight: FontWeightAlias.extraBold,
//                       letterSpacing: converter.w(
//                         -0.5,
//                       ),
//                     ),
//                   ),
//                 ),
//                 PositionedDirectional(
//                   top: 0,
//                   end: converter.w(
//                     12,
//                   ),
//                   bottom: 0,
//                   width: converter.h(
//                     8 + 24 + 8,
//                   ),
//                   child: BysonCupertinoButton.solid(
//                     onPressed: () => App.instance.navigator.push(
//                       Routes.appSetting.path,
//                     ),
//                     child: Center(
//                       child: Icon(
//                         IconsaxPlusLinear.setting_2,
//                         color: Colors.white,
//                         size: converter.h(
//                           24,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         physics: const ClampingScrollPhysics(),
//         child: Column(
//           children: [
//             const BysonSeparator(
//               designWidth: designWidth,
//               designHeight: 24,
//             ),
//             BysonAspectRatio(
//                 designWidth: designWidth,
//                 designHeight: 42,
//                 builder: (converter) => Stack(
//                       children: [
//                         PositionedDirectional(
//                             top: 0,
//                             start: converter.w(68),
//                             height: converter.h(24),
//                             child: Align(
//                               alignment: Alignment.centerLeft,
//                               child: Text(
//                                 '텍스트',
//                                 textAlign: TextAlign.start,
//                                 style: TextStyle(
//                                     letterSpacing: converter.lt(
//                                   fontSize: 16,
//                                   percent: 500,
//                                 )),
//                               ),
//                             ))
//                       ],
//                     )),
//             const BysonSeparator(
//               designWidth: designWidth,
//               designHeight: 16,
//               decoration: BoxDecoration(color: Color(0xFFF1F1F5)),
//             ),
//             BysonAspectRatio(
//               designWidth: designWidth,
//               designHeight: 380,
//               builder: (converter) => Stack(
//                 children: [
//                   Align(
//                     alignment: Alignment.topCenter,
//                     child: Divider(
//                       height: converter.h(50),
//                       indent: converter.w(20),
//                       endIndent: converter.w(20),
//                       color: const Color(0xFFE5E5EC),
//                       thickness: converter.h(1),
//                     ),
//                   ),
//                   PositionedDirectional(
//                       top: converter.h(50),
//                       start: 0,
//                       width: designWidth,
//                       height: converter.h(50),
//                       child: Center(
//                           child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => ExerciseType()));
//                               },
//                               child: Text('EXERCISE_TYPE')))),
//                   PositionedDirectional(
//                       top: converter.h(130),
//                       start: 0,
//                       width: designWidth,
//                       height: converter.h(50),
//                       child: Center(
//                           child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Muscle()));
//                               },
//                               child: Text('MUSCLE')))),
//                   PositionedDirectional(
//                       top: converter.h(210),
//                       start: 0,
//                       width: designWidth,
//                       height: converter.h(50),
//                       child: Center(
//                           child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Muscle()));
//                               },
//                               child: Text('EXERCISE_THRESHOLD_TYPE')))),
//                   PositionedDirectional(
//                       top: converter.h(290),
//                       start: 0,
//                       width: designWidth,
//                       height: converter.h(50),
//                       child: Center(
//                           child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Exercise()));
//                               },
//                               child: Text('EXERCISE'))))
//                 ],
//               ),
//             ),
//             BysonAspectRatio(
//                 designWidth: designWidth,
//                 designHeight: 50,
//                 builder: (converter) => Stack(
//                       children: [
//                         Align(
//                           alignment: Alignment.topCenter,
//                           child: Divider(
//                             indent: converter.w(20),
//                             endIndent: converter.w(20),
//                             color: const Color(0xFFE5E5EC),
//                             height: 1,
//                             thickness: converter.h(1),
//                           ),
//                         ),
//                         PositionedDirectional(
//                             top: converter.h(10),
//                             start: converter.w(20),
//                             child: Text('data'))
//                       ],
//                     ))
//           ],
//         ),
//       ),
//     );
//   }
// }
