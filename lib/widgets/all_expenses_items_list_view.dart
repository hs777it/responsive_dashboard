import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_mode.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

import '../utils/app_images.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});

  static const items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20.123'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20.123'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20.123'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) => AllExpensesItem(itemModel: e)).toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: Padding(
            padding: (index == 1)
                ? const EdgeInsets.symmetric(horizontal: 12)
                : EdgeInsets.zero,
            child: AllExpensesItem(itemModel: item),
          ),
        );
      }).toList(),
    );
  }
}
