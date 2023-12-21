import 'package:expensetracker/widgets/expenses_list/expense_items.dart';
import 'package:flutter/material.dart';
import 'package:expensetracker/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.removeExpenseOnSwipe});

  final List<Expense> expenses;
  final void Function(Expense expense) removeExpenseOnSwipe;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
          onDismissed: (direction) {
            removeExpenseOnSwipe(expenses[index]);
          },
          key: ValueKey(expenses[index]),
          background: Container(
            color: Theme.of(context).colorScheme.error.withOpacity(.75),
            margin: EdgeInsets.symmetric(horizontal: Theme.of(context).cardTheme.margin!.horizontal)
          ),
          child: ExpensesItem(expenses[index])),
    );
  }
}
