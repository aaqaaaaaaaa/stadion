import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stadion/presentation/widgets/battle_widget.dart';
import 'package:stadion/presentation/widgets/tarif_widget.dart';
import 'package:stadion/presentation/widgets/tournament_widget.dart';
import 'package:stadion/presentation/widgets/transfer_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding:
              EdgeInsets.only(right: 24.w, left: 16.w, bottom: 8.h, top: 8.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 36.w,
                height: 36.h,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child:
                    Image.asset('assets/images/Ellipse.png', fit: BoxFit.fill),
              ),
              SizedBox(width: 16.w),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: const Color(0xffF2F4F5),
                ),
                height: 36.h,
                padding: EdgeInsets.only(left: 8.w),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/ic_search.svg',
                          width: 16.w, height: 16.h),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 10.h,
                          ),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.top,
                            cursorColor: const Color(0xff979C9E),
                            maxLines: 1,
                            // controller: widget.controller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(bottom: 16.h),
                              hintText: "Maydonlarni qidirish...",
                              hintStyle: tSHintColorInterReg16,
                              prefixIconConstraints: BoxConstraints(
                                maxWidth: 30.w,
                                maxHeight: 30.h,
                                minHeight: 25.h,
                                minWidth: 25.w,
                              ),
                            ),
                            style: tSHintColorInterReg16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      height: 150.h,
                      aspectRatio: 2.5,
                      // enlargeCenterPage: true,
                    ),
                    items: imgList
                        .map((item) => Container(
                              height: 12.h,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 6.5.w, vertical: 20.h),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)),
                                  child:
                                      Image.asset(item, fit: BoxFit.contain)),
                            ))
                        .toList(),
                  ),
                  const BattleWidget(
                    title: "🏆️ Mening jamoam",
                    description: 'Sozlamalarga o’tish',
                  ),
                  const BattleWidget(
                      title: "🏆️ Football Battle",
                      description:
                          'Football Battle orqali raqib jamoalar bilan kuch sinashing!'),
                  const HomePageScrollOtdelWidget(
                    itemList: TournamentWidget(
                      image: "assets/images/cubok.png",
                      description: "Uzbekistan Cup",
                    ),
                    itemPadding: 15,
                    otdelTitle: 'Futbol turnirlari',
                    height: 151,
                  ),
                  const HomePageScrollOtdelWidget(
                      height: 101,
                      otdelTitle: "TransferMarket",
                      itemList: TransferMarketWidget(
                          transferName: 'C. Ronaldo',
                          address: 'Toshkent v. Olmazor',
                          reyting: '12',
                          shit: "58",
                          yosh: '24'),
                      itemPadding: 10),
                  Text('Tarif rejalari',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.sp,
                          fontFamily: 'Inter-Bold')),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
                    child: Text(
                        'Mobil ilovadan foydalanishda o’zingiz uchun qulay bo’lgan tarif rejalaridan birini tanlang:',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'Inter-Regular')),
                  ),
                  Container(
                    height: 299,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding: EdgeInsets.only(left: 24.w, bottom: 20.h),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: const TarifWidget(),
                          );
                        }),
                  )
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}

class HomePageScrollOtdelWidget extends StatelessWidget {
  const HomePageScrollOtdelWidget({
    Key? key,
    required this.otdelTitle,
    required this.itemList,
    required this.itemPadding,
    required this.height,
  }) : super(key: key);
  final String otdelTitle;
  final Widget itemList;
  final int itemPadding, height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  otdelTitle,
                  style: TextStyle(
                      fontFamily: 'Inter-Medium',
                      fontSize: 16.sp,
                      color: const Color(0xff202325)),
                ),
                Text(
                  "Ko’proq ko’rsatish",
                  style: TextStyle(
                      fontFamily: 'Inter-Regular',
                      fontSize: 12.sp,
                      color: const Color(0xff0078FF)),
                ),
              ],
            ),
          ),
          Container(
            height: height.h,
            padding: EdgeInsets.only(top: 22.h),
            child: ListView.builder(
                padding: EdgeInsets.only(left: 25.w),
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.only(right: itemPadding.w),
                      child: itemList);
                }),
          ),
        ],
      ),
    );
  }
}

final List<String> imgList = [
  'assets/images/Mask Group.png',
];

TextStyle tSHintColorInterReg16 = TextStyle(
    color: const Color(0xff979C9E),
    fontSize: 16.sp,
    fontFamily: 'Inter-Regular');
