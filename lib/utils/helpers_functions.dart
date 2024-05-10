import "package:intl/intl.dart";

String formatNumber(int number) {
  final formatNumber = NumberFormat.compactCurrency(
    decimalDigits: 0,
    symbol: "",
  ).format(number);

  return formatNumber;
}
