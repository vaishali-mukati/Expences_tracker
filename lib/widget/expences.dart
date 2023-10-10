import 'package:flutter/material.dart';
import 'package:third_expences_project/widget/expenses_list/expense_list.dart';
import 'package:third_expences_project/modals/expense.dart';
import 'package:third_expences_project/widget/new_expense.dart';
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
       amount: 3000,
       date:DateTime.now(),
       category:Category.work,
     ),
     Expense(
         title: 'Cinema',
         amount: 500,
         date:DateTime.now(),
         category:Category.leisure)];

   void _openAddExpenseOverLay(){
       showModalBottomSheet(
         isScrollControlled: true,
         context: context, builder:(cxt) =>
           NewExpense(onAddExpense: _addExpense),);
   }

    void _addExpense(Expense expense){
     setState(() {
       _registeredExpense.add(expense);
     });
    }

   @override
  Widget build( context) {
      return Scaffold(
        appBar:AppBar(
          title:const  Text('Flutter Expense Tracker'),
          actions: [
            IconButton(
                onPressed:_openAddExpenseOverLay ,
                icon:const Icon(Icons.add))
          ],
        ),
        body:Column(
          children: [
           const  Text('The chart'),
           Expanded(child: ExpenseList(expenses: _registeredExpense)),
          ],
        ),
      );
  }
}