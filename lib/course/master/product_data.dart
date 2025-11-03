import 'package:b_app/course/master/product_model.dart';
import 'package:flutter/material.dart';

class ProductTable extends StatefulWidget {
  const ProductTable({super.key});

  @override
  State<ProductTable> createState() => _ProductTableState();
}

class _ProductTableState extends State<ProductTable> {
  bool sortAscending = true;
  int? sortColumnIndex = 1;

  // 🔹 Sort by Price
  void _sortByPrice(int columnIndex, bool sortOrder) {
    setState(() {
      sortColumnIndex = columnIndex;
      sortAscending = sortOrder;
      productCollection.sort(
        (a, b) =>
            sortOrder ? a.price.compareTo(b.price) : b.price.compareTo(a.price),
      );
    });
  }

  // 🔹 Sort by Category (A–Z or Z–A)
  void _sortByCategory(int columnIndex, bool sortOrder) {
    setState(() {
      sortColumnIndex = columnIndex;
      sortAscending = sortOrder;
      productCollection.sort(
        (a, b) =>
            sortOrder
                ? a.category.compareTo(b.category)
                : b.category.compareTo(a.category),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product DataTable')),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            columnSpacing: 20,
            horizontalMargin: 50,
            sortColumnIndex: sortColumnIndex,
            sortAscending: sortAscending,
            headingRowColor: WidgetStateProperty.all(
              Colors.green.shade300,
            ), // ✅ Custom header color
            dataRowColor: WidgetStateProperty.resolveWith<Color?>(
              (states) =>
                  states.contains(WidgetState.selected)
                      ? Colors.green[50]
                      : null,
            ),
            columns: [
              const DataColumn(label: Text('Name')),
              DataColumn(
                label: const Text('Category'),
                onSort: _sortByCategory,
              ),
              DataColumn(
                label: const Text('Price'),
                numeric: true,
                onSort: _sortByPrice,
              ),
            ],
            rows:
                productCollection
                    .map(
                      (p) => DataRow(
                        cells: [
                          DataCell(Text(p.name)),
                          DataCell(Text(p.category)),
                          DataCell(Text('\$${p.price.toStringAsFixed(0)}')),
                        ],
                      ),
                    )
                    .toList(),
          ),
        ),
      ),
    );
  }
}
