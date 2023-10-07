import 'package:flutter/material.dart';
import 'package:third_expences_project/modals/expense.dart';

class ExpenseItem extends StatelessWidget{
  const ExpenseItem(this.expense,{super.key});

  final Expense expense;
  @override
  Widget build( context) {
    return Card(child:Padding(
      padding:const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child:Column(
        children: [
          Text(expense.title),
          const SizedBox(height: 4),
          Row(
            children: [
              Text('\$${expense.amount.toStringAsFixed(2)}'),
            ],
          )
        ],
      ),),);
  }
}