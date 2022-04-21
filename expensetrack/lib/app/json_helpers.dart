class JsonHelpers {
  static DateTime dateFromJson(String date) => DateTime.parse(date);
  
  static String dateToJson(DateTime date) => date.toIso8601String();
}