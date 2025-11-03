import 'package:flutter/material.dart';

class DataTableClass extends StatefulWidget {
  const DataTableClass({super.key});

  @override
  State<DataTableClass> createState() => _DataTableClassState();
}

class _DataTableClassState extends State<DataTableClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Simple Table'),
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    Text('Name'),
                    Text('Age'),
                    Text('Role'),
                    Text('Comment'),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Ammar'),
                    Text('25'),
                    Text('Manager'),
                    Text(''),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Ammar'),
                    Text('25'),
                    Text('Manager'),
                    Text(''),
                  ],
                ),
                TableRow(
                  children: [
                    Text('Ammar'),
                    Text('25'),
                    Text('Manager'),
                    Text('Text'),
                  ],
                ),
              ],
            ),
            Divider(),
            Text('Data Table'),
            DataTable(
              columns: [
                // header
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Age')),
                DataColumn(label: Text('Role')),
              ],
              rows: [
                // body
                DataRow(
                  cells: [
                    DataCell(Text('Ammar')),
                    DataCell(Text('25')),
                    DataCell(Text('Manager')),
                  ],
                ),

                DataRow(
                  cells: [
                    DataCell(Text('Sara')),
                    DataCell(Text('23')),
                    DataCell(Text('Developer')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


