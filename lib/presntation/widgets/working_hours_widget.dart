import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles.dart';

class WorkingHoursWidget extends StatelessWidget {
  const WorkingHoursWidget({
    Key? key,
    required this.time,
  }) : super(key: key);
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.w,
      width: 80.w,
      decoration: BoxDecoration(
          color: iconBackColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(8.r)),
      alignment: Alignment.center,
      child: Text(
        time,
        style: styleRegular16,
      ),
    );
  }
}
