import 'dart:ui';


class FormValidator {
  static String? validateTextForm(String text) {
    if (text == null || text.isEmpty) return "Please Fill";
    return null;
  }

  static String? validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 11) return 'Mobile Number must be of 11 digit';
    return null;
  }

  static String? validateDropDownForm(dynamic dynamic) {
    if (dynamic == null) return "Please Select";
    return null;
  }

  static Color getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }

    return Color(int.parse(hexColor, radix: 16));
  }

  static int? getDaysFromDate(String date) {
    final joinDay = DateTime.parse(date);
    final currentDay = DateTime.now();
    final difference = currentDay.difference(joinDay).inDays;
    return difference;
  }
}
