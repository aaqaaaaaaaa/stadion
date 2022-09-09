import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../styles.dart';

class FieldsTypeWidget extends StatelessWidget {
  const FieldsTypeWidget({
    Key? key,
    required this.fieldType,
    required this.icon,
  }) : super(key: key);
  final String fieldType;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.w),
            child: Text(
              'Maydonlar turi',
              style: titleStyle,
            ),
          ),
          Row(
            children: [
              Container(
                height: 32.w,
                width: 32.w,
                decoration: BoxDecoration(
                    color: iconBackColor.withOpacity(0.7),
                    shape: BoxShape.circle),
                alignment: Alignment.center,
                child: SvgPicture.asset(icon),
              ),
              SizedBox(width: 5.w),
              Text(
                fieldType,
                style: TextStyle(
                    color: const Color(0xff6C7072),
                    fontSize: 14.sp,
                    fontFamily: 'Inter-Regular'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
