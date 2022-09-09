import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BattleWidget extends StatefulWidget {
  const BattleWidget({
    Key? key,
    required this.description,
    required this.title,
  }) : super(key: key);
  final String title;
  final String description;

  @override
  State<BattleWidget> createState() => _BattleWidgetState();
}

class _BattleWidgetState extends State<BattleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r)
      ),
      margin: EdgeInsets.only(bottom: 17.h),
      width: 327.w,
      // height: 83.h,
      child: Stack(
        children: [
          Image.asset('assets/images/battle_imge.png',
              fit: BoxFit.fill, height: 94.h),
          Padding(
            padding: EdgeInsets.only(top: 22.h, left: 20.w, bottom: 13.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title,
                    maxLines: 1,
                    style: TextStyle(
                        fontFamily: 'Inter-Bold',
                        fontSize: 18.sp,
                        color: Colors.white)),
                SizedBox(height: 8.h),
                Text(widget.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontFamily: 'Inter-Regular',
                        fontSize: 14.sp,
                        color: Colors.white)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
