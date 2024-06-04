import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_mode.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

import '../utils/app_images.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final items = [
    const AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20.123'),
    const AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20.123'),
    const AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20.123'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) => AllExpensesItem(itemModel: e)).toList(),
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;

          return Expanded(
            child: GestureDetector(
              onTap: () => updateIndex(index),
              child: Padding(
                padding: (index == 1)
                    ? const EdgeInsets.symmetric(horizontal: 12)
                    : EdgeInsets.zero,
                child: AllExpensesItem(
                  itemModel: item,
                  isActive: selectedIndex == index,
                ),
              ),
            ),
          );

          /* old code
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () => updateIndex(index),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                  isActive: selectedIndex == index,
                  itemModel: item,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () => updateIndex(index),
              child: AllExpensesItem(
                isActive: selectedIndex == index,
                itemModel: item,
              ),
            ),
          );
        }
       */
        },
      ).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
