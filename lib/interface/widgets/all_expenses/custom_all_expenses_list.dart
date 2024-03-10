import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/models/item_all_expenses_model.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/all_expenses/custom_all_expenses_item.dart';
import 'package:responsive_adaptive_ui_design/utils/app_images.dart';

class CustomAllExpensesList extends StatefulWidget {
  const CustomAllExpensesList({
    super.key,
  });

  @override
  State<CustomAllExpensesList> createState() => _CustomAllExpensesListState();
}

class _CustomAllExpensesListState extends State<CustomAllExpensesList> {
  final List<ItemAllExpensesModel> items = const [
    ItemAllExpensesModel(
        image: Assets.imagesBalance,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    ItemAllExpensesModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: "April 2022",
        price: r"$20,129"),
    ItemAllExpensesModel(
        image: Assets.imagesExpense,
        title: "Expenses",
        date: "April 2022",
        price: r"$20,129")
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
          onTap: () {
            if (activeIndex != 0) {
              setState(() {
                activeIndex = 0;
              });
            }
          },
          child: CustomAllExpensesItem(
            itemAllExpensesModel: items[0],
            isSelected: activeIndex == 0,
          ),
        )),
        const SizedBox(width: 12),
        Expanded(
            child: GestureDetector(
          onTap: () {
            if (activeIndex != 1) {
              setState(() {
                activeIndex = 1;
              });
            }
          },
          child: CustomAllExpensesItem(
            itemAllExpensesModel: items[1],
            isSelected: activeIndex == 1,
          ),
        )),
        const SizedBox(width: 12),
        Expanded(
            child: GestureDetector(
          onTap: () {
            if (activeIndex != 2) {
              setState(() {
                activeIndex = 2;
              });
            }
          },
          child: CustomAllExpensesItem(
            itemAllExpensesModel: items[2],
            isSelected: activeIndex == 2,
          ),
        )),
      ],
    );

    // Row(
    //   // children: list.map((e) => Expanded(child: CustomAllExpensesItem(itemAllExpensesModel: e))).toList(),
    //   children: items.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;

    //     return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             if (activeIndex != index) {
    //               setState(() {
    //                 activeIndex = index;
    //               });
    //             }
    //           },
    //           child: CustomAllExpensesItem(
    //             itemAllExpensesModel: item,
    //             isSelected: activeIndex == index,
    //           ),
    //         ));
    //   }).toList(),
    // );
  }
}
