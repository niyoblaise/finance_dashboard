class Transaction {
  final String title;
  final String category;
  final double amount;
  final String time;
  final bool isExpense;

  Transaction({
    required this.title,
    required this.category,
    required this.amount,
    required this.time,
    required this.isExpense,
  });
}

class Payment {
  final String platform;
  final double amount;
  final String date;
  final bool isUp;

  Payment({
    required this.platform,
    required this.amount,
    required this.date,
    required this.isUp,
  });
}

class SavingPlan {
  final String title;
  final String goal;
  final double currentAmount;
  final double targetAmount;

  SavingPlan({
    required this.title,
    required this.goal,
    required this.currentAmount,
    required this.targetAmount,
  });
}