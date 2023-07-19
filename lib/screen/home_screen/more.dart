import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test_app/utils/size_configuration.dart';

class ImageContainer extends StatelessWidget {
  final String image;

  const ImageContainer(this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return context.mediaQuerySize.width < 392
        ? Stack(
            alignment: Alignment.topLeft,
            clipBehavior: Clip.none,
            children: [
              Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [BoxShadow(
                  offset: Offset(0,4),
                  blurRadius: 25,
                  color: Color.fromRGBO(136, 160, 187, 0.15)
                )]
              ),
                child: Column(
                  children: [
                    Image.asset(
                      image,
                      fit: BoxFit.fill,
                      width: Get.width,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
                            textAlign: TextAlign.justify,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.notoSans(
                              textStyle: const TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: const Color.fromRGBO(
                                        238, 171, 64, 0.1)),
                                child: Center(
                                  child: Text(
                                    "介護付き有料老人ホーム",
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.notoSans(
                                      textStyle: const TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(250, 170, 20, 1),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "¥ 6,000",
                                style: GoogleFonts.notoSans(
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              width: Get.width / 2,
                              child: Text(
                                "5月 31日（水）08 : 00 ~ 17 : 00",
                                maxLines: 2,
                                // overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.notoSans(
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: Get.width / 1.5,
                            child: Text(
                              "北海道札幌市東雲町3丁目916番地17号 ",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.notoSans(
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: Get.width / 2,
                            child: Text(
                              "交通費 300円",
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.notoSans(
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: SizeConfig.blockSizeHorizontal! * 50,
                                child: Text(
                                  "住宅型有料老人ホームひまわり倶楽部",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.notoSans(
                                    textStyle: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Image.asset(
                                "assets/icons/fav2.png",
                                width: SizeConfig.blockSizeHorizontal! * 4,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: SizeConfig.blockSizeVertical! * 15,
                left: -5,
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(right: 10),
                  width: SizeConfig.blockSizeHorizontal! * 30,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 98, 98, 1)),
                  child: Center(
                      child: Text(
                    "本日まで",
                    style: GoogleFonts.notoSans(
                      textStyle: const TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
                ),
              )
            ],
          )
        : Stack(
            alignment: Alignment.topLeft,
            clipBehavior: Clip.none,
            children: [
               Container(decoration: BoxDecoration(
                 color: Colors.white,
                   borderRadius: BorderRadius.circular(15),
                   boxShadow: const [BoxShadow(
                       offset: Offset(0,4),
                       blurRadius: 25,
                       color: Color.fromRGBO(136, 160, 187, 0.15)
                   )]
               ),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                          width: Get.width,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
                              textAlign: TextAlign.justify,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.notoSans(
                                textStyle: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: Get.width / 2,
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: const Color.fromRGBO(
                                          238, 171, 64, 0.1)),
                                  child: Center(
                                    child: Text(
                                      "介護付き有料老人ホーム",
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.notoSans(
                                        textStyle: const TextStyle(
                                          fontSize: 10,
                                          color:
                                              Color.fromRGBO(250, 170, 20, 1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "¥ 6,000",
                                  style: GoogleFonts.notoSans(
                                    textStyle: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                                width: Get.width / 2,
                                child: Text(
                                  "5月 31日（水）08 : 00 ~ 17 : 00",
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.notoSans(
                                    textStyle: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              width: Get.width / 1.5,
                              child: Text(
                                "北海道札幌市東雲町3丁目916番地17号 ",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.notoSans(
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              width: Get.width / 2,
                              child: Text(
                                "交通費 300円",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.notoSans(
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: SizeConfig.blockSizeHorizontal! * 65,
                                  child: Text(
                                    "住宅型有料老人ホームひまわり倶楽部",
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.notoSans(
                                      textStyle: const TextStyle(
                                        fontSize: 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  "assets/icons/fav2.png",
                                  width: SizeConfig.blockSizeHorizontal! * 8,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              Positioned(
                top: (context.mediaQuerySize.height > 851 &&
                        context.mediaQuerySize.height < 940)
                    ? SizeConfig.blockSizeVertical! * 33
                    : context.mediaQuerySize.height > 1000
                        ? SizeConfig.blockSizeVertical! * 33
                        : SizeConfig.blockSizeVertical! * 18,
                left: -5,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(right: 10),
                  width: Get.width / 5,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 98, 98, 1)),
                  child: Center(
                      child: Text(
                    "本日まで",
                    style: GoogleFonts.notoSans(
                      textStyle: const TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
                ),
              )
            ],
          );
  }
}
