import 'package:calculator_app/model/item.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // List<Item> lstItems = [
  //   Item(
  //     name: 'Apple',
  //     price: 1000,
  //     quantity: 5,
  //   ),
  //   Item(
  //     name: 'Banana',
  //     price: 2000,
  //     quantity: 10,
  //   ),
  //   Item(
  //     name: 'Orange',
  //     price: 3000,
  //     quantity: 15,
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
        child: DataTable(
      headingRowColor:
          MaterialStateColor.resolveWith((states) => Colors.blue[300]!),
      columns: const [
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Price')),
        DataColumn(label: Text('Quantity')),
      ],
      rows: const [
        DataRow(cells: [
          DataCell(Text('Apple')),
          DataCell(Text('1000')),
          DataCell(Text('5')),
        ]),
        DataRow(cells: [
          DataCell(Text('Banana')),
          DataCell(Text('2000')),
          DataCell(Text('10')),
        ]),
        DataRow(cells: [
          DataCell(Text('Orange')),
          DataCell(Text('3000')),
          DataCell(Text('15')),
        ]),
      ],
    ));
  }
}
