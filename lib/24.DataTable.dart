import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable'),
      ),
      body: DataTable(
        columns: [
          DataColumn(
              label: Text(
            'Roll No',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 15.0,
            ),
          )),
          DataColumn(
              label: Text(
            'Name',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 15.0,
            ),
          )),
          DataColumn(
              label: Text(
            'Age',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 15.0,
            ),
          )),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('AE1001')),
            DataCell(Text('Ram')),
            DataCell(Text('25'))
          ]),
          DataRow(cells: [
            DataCell(Text('AE1002')),
            DataCell(Text('Sam')),
            DataCell(Text('22'))
          ]),
          DataRow(cells: [
            DataCell(Text('AE1003')),
            DataCell(Text('Mohamad')),
            DataCell(Text('21'))
          ]),
          DataRow(cells: [
            DataCell(Text('AE1004')),
            DataCell(Text('Raja')),
            DataCell(Text('25'))
          ]),
          DataRow(cells: [
            DataCell(Text('AE1005')),
            DataCell(Text('Sara')),
            DataCell(Text('22'))
          ]),
          DataRow(cells: [
            DataCell(Text('AE1006')),
            DataCell(Text('Rakesh')),
            DataCell(Text('21'))
          ]),
        ],
      ),
    );
  }
}
