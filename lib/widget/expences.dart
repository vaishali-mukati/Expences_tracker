import 'package:flutter/material.dart';
import 'package:third_expences_project/widget/expenses_list/expense_list.dart';
import 'package:third_expences_project/modals/expense.dart';
class Expenses extends StatefulWidget{
const Expenses({super.key});

@override
  State<Expenses> createState() {
      return _ExpensesState();
  }

}

class _ExpensesState extends State<Expenses>{
   final  List<Expense> _registeredExpense = [
     Expense(
       title: 'Flutter Course',
       amount: 19.9,
       date:DateTime.now(),
       category:Category.work,
     ),
     Expense(
         title: 'Cinema',
         amount: 15.8,
         date:DateTime.now(),
         category:Category.leisure)];

   @override
  Widget build( context) {
      return Scaffold(
        body:Column(
          children: [
           const  Text('The chart'),
           Expanded(child: ExpenseList(expenses: _registeredExpense)),
          ],
        ),
      );
  }
}