import 'package:flutter/material.dart';
import 'package:third_expences_project/modals/expense.dart';
import 'package:third_expences_project/widget/expenses_list/expenses_item.dart';
class ExpenseList extends StatelessWidget{
const ExpenseList({super.key,required this.expenses});

  final List<Expense> expenses;
  @override
  Widget build( context) {
    return ListView.builder(itemCount:expenses.length ,
        itemBuilder: (ctx,index) => ExpenseItem(expenses[index]));
  }
}