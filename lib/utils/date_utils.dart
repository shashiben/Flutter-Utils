class DateTimeUtils {
  static DateTime presentDate = DateTime.now();
  static List<String> weekDayList = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  static List<String> monthsList = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  static List<String> shortMonthsList = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];
  static String getWeekDay() {
    int index = DateTime.now().weekday;
    return weekDayList[index - 1];
  }

  static String getMonth({DateTime? dateTime, bool isShort = false}) {
    dateTime = dateTime ?? presentDate;
    int month = dateTime.month;
    return isShort ? shortMonthsList[month] : monthsList[month];
  }

  static String getDate({DateTime? dateTime}) {
    dateTime = dateTime ?? presentDate;
    return dateTime.day < 10 ? "0${dateTime.day}" : dateTime.day.toString();
  }

  static String getTime({DateTime? date}) {
    date = date ?? presentDate;

    String time = date.hour.toString() +
        ":" +
        (date.minute < 10 ? "${date.minute}" : "${date.minute}") +
        " ${date.hour < 12 ? "AM" : "PM"}";
    return time;
  }

  static String getWholeDate({bool isIncludeTime = false, DateTime? date}) {
    try {
      date = date ?? presentDate;
      String tim = monthsList[date.month - 1] +
          " " +
          date.day.toString() +
          "," +
          date.year.toString() +
          (!isIncludeTime ? "" : (" " + getTime(date: date)));
      return tim;
    } catch (e) {
      return e.toString();
    }
  }

  static String timeAgoSinceDate({required DateTime date}) {
    final date2 = DateTime.now();
    final difference = date2.difference(date);

    if ((difference.inDays / 365).floor() >= 2) {
      return '${(difference.inDays / 365).floor()} years ago';
    } else if ((difference.inDays / 365).floor() >= 1) {
      return 'Last year';
    } else if ((difference.inDays / 30).floor() >= 2) {
      return '${(difference.inDays / 365).floor()} months ago';
    } else if ((difference.inDays / 30).floor() >= 1) {
      return 'Last month';
    } else if ((difference.inDays / 7).floor() >= 2) {
      return '${(difference.inDays / 7).floor()} weeks ago';
    } else if ((difference.inDays / 7).floor() >= 1) {
      return 'Last week';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return 'Yesterday';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return 'An hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return 'A minute ago';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }

  List<DateTime> generateCurrentWeekDays() {
    List<DateTime> weekDays = [];

    DateTime dateTime = DateTime.now();
    int weekDay = dateTime.weekday;

    //?Add Left Dates
    for (int i = 0; i < weekDay - 1; i++) {
      DateTime tempData =
          dateTime.subtract(Duration(days: dateTime.weekday - i - 1));
      weekDays.add(DateTime(tempData.year, tempData.month, tempData.day));
    }

    //?Add Right Dates
    for (int i = weekDay - 1; i < 7; i++) {
      DateTime tempData =
          dateTime.add(Duration(days: i - dateTime.weekday + 1));
      weekDays.add(DateTime(tempData.year, tempData.month, tempData.day));
    }

    return weekDays;
  }
}
