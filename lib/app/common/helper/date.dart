class DateTimeExtension{
  



  static bool isAfterOrEqualTo(DateTime dateTime,{required DateTime date}) {
    // if (date != null) {
      final isAtSameMomentAs = dateTime.isAtSameMomentAs(date);
      return isAtSameMomentAs | date.isAfter(dateTime);
    // }
    // return null;
  }

  static bool isBeforeOrEqualTo(DateTime dateTime,{required DateTime date}) {

      final isAtSameMomentAs = dateTime.isAtSameMomentAs(date);
      return isAtSameMomentAs | date.isBefore(dateTime);

  }

  bool isBetween({required DateTime fromDateTime,
    required DateTime toDateTime,required DateTime date}) {
    
      final isAfter = DateTimeExtension.isAfterOrEqualTo(fromDateTime,date:date);
      final isBefore = DateTimeExtension.isBeforeOrEqualTo(toDateTime,date: date);
      return isAfter && isBefore;

  }

}