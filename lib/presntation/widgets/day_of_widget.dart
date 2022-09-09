import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DayOffWidget extends StatelessWidget {
  const DayOffWidget({
    required this.title,
    Key? key,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.w,
      width: 58.w,
      decoration: BoxDecoration(
          color: const Color(0xffFFE5E5).withOpacity(0.7),
          borderRadius: BorderRadius.circular(8.r)),
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
            color: const Color(0xffFF5247),
            fontSize: 16.sp,
            fontFamily: 'Inter-Regular'),
      ),
    );
  }
}
