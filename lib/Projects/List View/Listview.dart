// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('hello'),
//         ),
//         body: Card(
//           margin: EdgeInsets.all(15),
//           elevation: 10,
//           child: Center(
//             child: IntrinsicWidth(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(top: 20, left: 10, right: 10),
//                     child: Text(
//                       'PLAYING XI',
//                       style: TextStyle(
//                         fontSize: 20,
//                       ),
//                     ),
//                   ),
//                   Divider(
//                     color: Colors.black,
//                   ),
//                   Image.network(
//                     "https://sportavideos.blob.core.windows.net/videos/IMAGES/TEAMS/TEA0000660.png",
//                     height: 100,
//                     width: 100,
//                   ),
//                   Text('DV'),
//                   ListTile(
//                     contentPadding: EdgeInsets.all(10),
//                     leading: Container(
//                       child: Image.network(
//                         "https://ilt20storage.blob.core.windows.net/ilt20storage/players/PYC0000522.png",
//                         height: 100,
//                         width: 100,
//                       ),
//                     ),
//                     title: Text('Title'),
//                     subtitle: Text('Subtitle'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: Card(
          margin: EdgeInsets.all(15),
          elevation: 10,
          child: Center(
            child: Column(
              children: [
                buildMyWidget(),
                buildMyListTile(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMyWidget() {
    return IntrinsicWidth(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Text(
              'PLAYING XI',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Image.network(
            "https://sportavideos.blob.core.windows.net/videos/IMAGES/TEAMS/TEA0000660.png",
            height: 100,
            width: 100,
          ),
          Text('DV'),
        ],
      ),
    );
  }

  Widget buildMyListTile() {
    List<String> values = [
      "Value 1",
      "Value 2",
      "Value 3",
      "Value 4",
      "Value 5",
      "Value 6",
      "Value 7",
      "Value 8",
      "Value 9",
      "Value 10"
    ];

    return ListView.builder(
      itemCount: values.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.5),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.network(
              "https://ilt20storage.blob.core.windows.net/ilt20storage/players/PYC0000522.png",
              width: 70,
            ),
          ),
          title: Text(values[index],
              style: TextStyle(color: Colors.blue, fontSize: 20)),
          subtitle: Text('Subtitle'),
          isThreeLine: true,
        );
      },
    );
  }

// Widget buildMyListTile() {
//   return ListTile(
//     contentPadding: EdgeInsets.all(10),
//     leading: Container(
//       decoration: BoxDecoration(
//         border: Border.all(width: 0.5),
//         borderRadius: BorderRadius.circular(5), //<-- SEE HERE
//       ),
//       child: Image.network(
//         "https://ilt20storage.blob.core.windows.net/ilt20storage/players/PYC0000522.png",
//         width: 70,
//         // Adjust the fit as needed
//       ),
//     ),
//     title: Text('Title', style: TextStyle(color: Colors.blue, fontSize: 20)),
//     subtitle: Text('Subtitle'),
//     isThreeLine: true,
//   );
// }
}
