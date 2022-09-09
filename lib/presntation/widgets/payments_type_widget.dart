import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../styles.dart';

class PaymentsTypeWidget extends StatelessWidget {
  const PaymentsTypeWidget({
    Key? key,
    required this.icon,
    required this.isPaymentTypeHave,
  }) : super(key: key);
  final String icon;
  final bool isPaymentTypeHave;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 32.w,
          width: 38.4.w,
          decoration: BoxDecoration(
              color: iconBackColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(8.r)),
          alignment: Alignment.center,
          child: SvgPicture.asset(icon),
        ),
        Positioned(
            top: -2,
            right: -2,
            child: isPaymentTypeHave
                ? SvgPicture.asset('assets/icons/check_ic.svg')
                : SvgPicture.asset('assets/icons/cancel_ic.svg'))
      ],
    );
  }
}
