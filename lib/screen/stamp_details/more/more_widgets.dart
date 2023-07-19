import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/size_configuration.dart';

class StarWidget extends StatelessWidget {
  const StarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(children: [
      Container(
          height: SizeConfig.blockSizeVertical! * 21,
          width: Get.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.10),
                  blurRadius: 15,
                  offset: Offset(0, 4),
                ),
              ]),
          child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              childAspectRatio: 5 / 3,
              crossAxisCount: 5,
              mainAxisSpacing: 5,
              crossAxisSpacing: 0,
              children: List.generate(15, (index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/star.png",
                          width: 42,
                        ),
                        const Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ],
                );
              }))).paddingSymmetric(horizontal: 5)
    ]);
  }
}

class ListItems extends StatelessWidget {
  final String date;
  final String list;
  final String count;

  const ListItems(
      {required this.date, required this.list, required this.count, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          date,
          style: GoogleFonts.notoSans(
            textStyle: const TextStyle(
              fontSize: 14,
              color: Color.fromRGBO(181, 181, 181, 1),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              list,
              style: GoogleFonts.notoSans(
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Text(
              count,
              style: GoogleFonts.notoSans(
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
