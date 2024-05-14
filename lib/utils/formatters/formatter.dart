import 'package:intl/intl.dart';

class MyFormatter {
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);// Customize the date format as need
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'vi_VN', symbol: 'đ').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    if(phoneNumber.length == 10){
      return '${phoneNumber.substring(0, 4)} ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }
}