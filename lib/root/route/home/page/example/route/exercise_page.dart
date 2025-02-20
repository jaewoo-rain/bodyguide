// import 'package:app/app/misc/sqlite.dart';
// import 'package:flutter/material.dart';
//
// class Exercise extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Some Page')),
//       body: FutureBuilder(
//         future: DatabaseHelper().fetchData('EXERCISE'),
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
//                 title: Text(item['exer_name'] ?? 'Unknown'),
//                 subtitle: Text(item['exer_name_kr'] ?? 'Unknown'),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
