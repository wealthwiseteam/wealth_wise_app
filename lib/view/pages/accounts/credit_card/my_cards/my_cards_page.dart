import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';

import '../../../../../resources/constants/app_assets.dart';
import '../../../../../resources/localization/generated/l10n.dart';
import '../../../../../resources/styles/app_colors.dart';
import '../../../../widgets/public_card.dart';
import '../../../../widgets/public_text.dart';

class MyCardsPage extends StatefulWidget {
  MyCardsPage({super.key});

  @override
  State<MyCardsPage> createState() => _MyCardsPageState();
}

class _MyCardsPageState extends State<MyCardsPage> {
  @override
  Widget build(BuildContext context) {
    final phoneSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () async {
              // for closing keyboard before pop the page to avoid errors
              FocusScope.of(context).unfocus();
              await Future.delayed(const Duration(milliseconds: 10));
              if (!mounted) return;
              Navigator.pop(context);
            }),
        title: PublicText(
            txt: S.of(context).myCards, size: 20.sp, fw: FontWeight.w700),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0.h),
          child: Column(
            children: [
              SizedBox(
                height: phoneSize.height / 4.h,
                width: phoneSize.width,
                child: Stack(
                  children: [
                    SizedBox(
                        width: phoneSize.width,
                        child: Image.asset(
                          AppAssets.maskGroup,
                          fit: BoxFit.fill,
                        )),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.h, horizontal: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Spacer(
                                flex: 1.bitLength,
                              ),
                              PublicText(
                                txt: S.of(context).paymentCard,
                                color: Colors.white,
                                size: 12,
                                fw: FontWeight.w400,
                                ff: "Poppins",
                              ),
                              Spacer(
                                flex: 2.bitLength,
                              ),
                              // دة مش هيبقي const
                              PublicText(
                                txt: S.of(context).numberCard,
                                color: Colors.white,
                                size: 16.sp,
                                fw: FontWeight.w500,
                                ff: "Poppins",
                              ),
                            Spacer(
                                flex: 3.bitLength,
                              ),
                              // دة مش هيبقي const
                              PublicText(
                                txt: 'EGP 22563',
                                color: Colors.white,
                                size: 20.sp,
                                fw: FontWeight.w600,
                                ff: "Poppins",
                              ),
                              Spacer(
                                flex: 1.bitLength,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset(AppAssets.group),
                              const Spacer(),
                              const PublicText(
                                txt: '21/23',
                                color: Colors.white60,
                                ff: "Poppins",
                                fw: FontWeight.w400,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
             35.ph,
              SizedBox(
                height: phoneSize.height / 4.h,
                width: phoneSize.width,
                child: Stack(
                  children: [
                    SizedBox(
                        width: phoneSize.width,
                        child: Image.asset(
                          AppAssets.maskGroup,
                          fit: BoxFit.fill,
                        )),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.h, horizontal: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Spacer(
                                flex: 1.bitLength,
                              ),
                              PublicText(
                                txt: S.of(context).paymentCard,
                                color: Colors.white,
                                size: 12.sp,
                                fw: FontWeight.w400,
                                ff: "Poppins",
                              ),
                              Spacer(
                                flex: 2.bitLength,
                              ),
                              // دة مش هيبقي const
                              PublicText(
                                txt: S.of(context).numberCard,
                                color: Colors.white,
                                size: 16.sp,
                                fw: FontWeight.w500,
                                ff: "Poppins",
                              ),
 Spacer(
                                flex: 3.bitLength,
                              ),
                              // دة مش هيبقي const
                              PublicText(
                                txt: 'EGP 22563',
                                color: Colors.white,
                                size: 20.sp,
                                fw: FontWeight.w600,
                                ff: "Poppins",
                              ),
                              Spacer(
                                flex: 1.bitLength,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image.asset(AppAssets.group),
                              const Spacer(),
                              const PublicText(
                                txt: '21/23',
                                color: Colors.white60,
                                ff: "Poppins",
                                fw: FontWeight.w400,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              180.ph,
              DottedBorder(
                radius: const Radius.circular(10),
                color: AppColors.mintGreen,
                strokeWidth: 2.w,
                dashPattern:  [
                  5.h,
                  5.h,
                ],
                child: Container(
                  width: 320.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: AppColors.mintGreen,
                          )),
                      PublicText(
                        txt: S.of(context).addCard,
                        size: 16.sp,
                        fw: FontWeight.w600,
                        ff: "Inter",
                        color: AppColors.mintGreen,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}