class ItemTransactionModel {
  final String title, date, amount;
  final bool isWithdrawal;

  const ItemTransactionModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}
