// import 'package:app/app/misc/sqlite.dart';
// import 'package:flutter/material.dart';
//
// class ExerciseThresholdType extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Some Page')),
//       body: FutureBuilder(
//         future: DatabaseHelper().fetchData('EXERCISE_THRESHOLD_TYPE'),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }
//
//           if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(child: Text('No data found.'));
//           }
//
//           final data = snapshot.data as List<Map<String, dynamic>>;
//           return ListView.builder(
//             itemCount: data.length,
//             itemBuilder: (context, index) {
//               final item = data[index];
//               return ListTile(
//                 title: Text(item['type'] ?? 'Unknown'),
//                 subtitle: Text(item['comment'] ?? 'Unknown'),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
