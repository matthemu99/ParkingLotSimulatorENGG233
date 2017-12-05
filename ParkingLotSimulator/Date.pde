// #Author: Matthew M.
// #Author: Phillip M.

class Date {
  final String [] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
  int today;
  int hour;
  int minute;
  boolean before_noon;

  Date(int d, int h, int m, boolean beforeNoon) {

    today =d%7;
    if ( h%12 ==0 && before_noon == false && m< 60) {
      hour = h;
    } else {
      hour = h%12;
    }
    minute = m%60;
    before_noon = beforeNoon;
  }
  Date(Date d) {
    today = d.today;
    hour = d.hour;
    minute = d.minute;
    before_noon = d.before_noon;
  }

  void addHour() { 
    if (  hour < 11 ) {
      hour++;
    } else if (hour == 11 && before_noon ==false) {
      before_noon = !before_noon;
      hour++;
      today++;
    } else if (hour == 11 && before_noon == true) {
      before_noon = !before_noon;
      hour++;
    } else if (hour == 12) { 
      hour =1;
    }
    totalTime++;

    if (today==7) {
      today=0;
    }
  }
  void addMinute() {
    minute++;
    if (minute == 60) {
      minute = 0;
      addHour();
    }
  }


  String toString() {
    String date = days[today];

    if (hour <10) {
      date += " 0" + hour;
    } else {
      date += " " + hour;
    }

    if (minute < 10) {
      date += ":0" + minute;
    } else {
      date += ":" + minute;
    }

    if (before_noon) {
      date += "AM";
    } else {
      date += "PM";
    }
    return date;
  }

  boolean equal (Date date) {
    if (date.today == today && date.hour == hour && date.minute == minute && date.before_noon == before_noon) {
      return true;
    } else {
      return false;
    }
  }
}