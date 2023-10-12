import 'package:flutter/material.dart';
import 'package:third_expences_project/modals/expense.dart';
import 'package:third_expences_project/widget/expenses_list/expenses_item.dart';
class ExpenseList extends StatelessWidget{
const ExpenseList({super.key,required this.expenses,required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build( context) {
    return ListView.builder(itemCount:expenses.length ,
        itemBuilder: (ctx,index) => Dismissible(key:
        ValueKey(expenses[index]),
            background: Container(
              color: Theme.of(context).colorScheme.error.withOpacity(0.75),
              margin: EdgeInsets.symmetric(
                  horizontal:Theme.of(context).cardTheme.margin!.horizontal),
            ),
            onDismissed: (direction){
             onRemoveExpense(expenses[index]);
            },
            child: ExpenseItem(expenses[index]),
        ),
    );
  }
}