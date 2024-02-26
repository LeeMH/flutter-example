import 'package:intl/intl.dart';

class DataUtils {
  static final oCcy = NumberFormat("#,###", "ko_KR");
  static String currencyFormat(String price) {
    var number = int.tryParse(price);
    if (number == null) {
      return price;
    } else {
      return '${oCcy.format(number)}원';
    }
  }
}
