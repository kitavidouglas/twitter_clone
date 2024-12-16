String formatDate(String date) {
  final DateTime parsedDate = DateTime.parse(date);
  return "${parsedDate.day}/${parsedDate.month}/${parsedDate.year}";
}
