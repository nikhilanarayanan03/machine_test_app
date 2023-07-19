import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'more/more.dart';
import 'edit_store_controller.dart';

class ProfileEdit extends StatelessWidget {
  ProfileEdit({Key? key}) : super(key: key);
  final controller = Get.find<ProfileEditViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 5,
            toolbarHeight: 60,
            backgroundColor: Colors.white,
            leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                child: const CircleAvatar(
                  radius: 2,
                  backgroundColor: Color.fromRGBO(140, 129, 123, .10),
                  child: Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 20,
                    color: Color.fromRGBO(184, 184, 184, 1),
                  ),
                ),
              ),
            ),
            centerTitle: true,
            title: Text(
              '店舗プロフィール編集',
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.notoSans(
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            actions: [
              Container(
                padding: const EdgeInsets.only(right: 28, top: 10),
                child: badges.Badge(
                  badgeStyle: const badges.BadgeStyle(
                      badgeColor: Color.fromRGBO(238, 125, 66, 1)),
                  position: badges.BadgePosition.topEnd(top: 8, end: 3),
                  badgeContent: const Text(
                    '99+',
                    style: TextStyle(fontSize: 5, color: Colors.white),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none_sharp,
                        size: 33,
                        color: Color.fromRGBO(75, 73, 72, 1),
                      )),
                ),
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  EditTextField(name: '店舗名', hint: 'Mer キッチン'),
                  const SizedBox(
                    height: 15,
                  ),
                  EditTextField(name: '代表担当者名', hint: '林田　絵梨花'),
                  const SizedBox(
                    height: 15,
                  ),
                  EditTextField(name: '店舗電話番号', hint: '123-45678910'),
                  const SizedBox(
                    height: 15,
                  ),
                  EditTextField(name: '店舗住所', hint: '大分県豊後高田市払田791-13'),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.black,
                    height: 219,
                    child: FlutterMap(
                      options: MapOptions(
                        zoom: 14.0,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                              'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName: 'com.example.app',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ImageSet(
                      name: '店舗外観', hint: '最大3枚まで', image: controller.image1),
                  const SizedBox(
                    height: 15,
                  ),
                  ImageSet(
                      name: '店舗内観',
                      hint: '1枚〜3枚ずつ追加してください',
                      image: controller.image2),
                  const SizedBox(
                    height: 15,
                  ),
                  ImageSet(
                      name: '料理写真',
                      hint: '1枚〜3枚ずつ追加してください',
                      image: controller.image3),
                  const SizedBox(
                    height: 15,
                  ),
                  ImageSet(
                      name: '料理写真',
                      hint: '1枚〜3枚ずつ追加してください',
                      image: controller.image4),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(
                      text: '営業時間',
                      style: GoogleFonts.notoSans(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: '* ',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      DropDown(),
                      const SizedBox(
                        width: 7,
                      ),
                      const Text(
                        '~',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      DropDown(),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'ランチ時間',
                      style: GoogleFonts.notoSans(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: '* ',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      DropDown(),
                      const SizedBox(
                        width: 7,
                      ),
                      const Text(
                        '~',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      DropDown(),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(height: Get.height / 6.5, child: CheckList()),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: '料理カテゴリー',
                      style: GoogleFonts.notoSans(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: '* ',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropDown2(),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(
                      text: '予算',
                      style: GoogleFonts.notoSans(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: '* ',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: 40,
                            width: 80,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                    color: Color.fromRGBO(199, 196, 192, 1)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(bottom: 5, left: 10),
                                enabledBorder: InputBorder.none,
                                hintText: '¥ 1,000 ',
                                hintStyle: const TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromRGBO(
                                    69,
                                    69,
                                    69,
                                    1,
                                  ),
                                  fontWeight: FontWeight.normal,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(232, 232, 232, 1)),
                                ),
                              ),
                            )),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '~',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                            height: 40,
                            width: 80,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                    color: Color.fromRGBO(199, 196, 192, 1)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(bottom: 5, left: 10),
                                enabledBorder: InputBorder.none,
                                hintText: '¥ 2,000 ',
                                hintStyle: const TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromRGBO(
                                    69,
                                    69,
                                    69,
                                    1,
                                  ),
                                  fontWeight: FontWeight.normal,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                      color: Color.fromRGBO(232, 232, 232, 1)),
                                ),
                              ),
                            )),
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  EditTextField(name: 'キャッチコピー', hint: '美味しい！リーズナブルなオムライスランチ！'),
                  const SizedBox(
                    height: 20,
                  ),
                  EditTextField(name: '座席数', hint: '40席'),
                  const SizedBox(
                    height: 16,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "喫煙席",
                      style: GoogleFonts.notoSans(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                            text: '*',
                            style: TextStyle(color: Colors.red, fontSize: 14)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        child: InkWell(
                          onTap: controller.onCheckValue1,
                          child: Obx(
                            () => Row(
                              children: [
                                controller.checkValue1.value == 1
                                    ? const Icon(
                                        Icons.check_box_outline_blank_rounded,
                                        color: Color.fromRGBO(232, 232, 232, 1),
                                      )
                                    : const Icon(Icons.check_box_rounded,
                                        color: Color.fromRGBO(238, 125, 66, 1)),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "有",
                                  style: GoogleFonts.notoSans(
                                    textStyle: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 32,
                      ),
                      Container(
                        child: InkWell(
                          onTap: controller.onCheckValue1,
                          child: Obx(
                            () => Row(
                              children: [
                                controller.checkValue1.value == 0
                                    ? const Icon(
                                        Icons.check_box_outline_blank_rounded,
                                        color: Color.fromRGBO(232, 232, 232, 1),
                                      )
                                    : const Icon(Icons.check_box_rounded,
                                        color: Color.fromRGBO(238, 125, 66, 1)),
                                Text(
                                  "無",
                                  style: GoogleFonts.notoSans(
                                    textStyle: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      text: "駐車場",
                      style: GoogleFonts.notoSans(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                            text: '*',
                            style: TextStyle(color: Colors.red, fontSize: 14)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        child: InkWell(
                          onTap: controller.onCheckValue2,
                          child: Obx(
                            () => Row(
                              children: [
                                controller.checkValue2.value == 1
                                    ? const Icon(
                                        Icons.check_box_outline_blank_rounded,
                                        color: Color.fromRGBO(232, 232, 232, 1),
                                      )
                                    : const Icon(Icons.check_box_rounded,
                                        color: Color.fromRGBO(238, 125, 66, 1)),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "有",
                                  style: GoogleFonts.notoSans(
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 32,
                      ),
                      Container(
                        child: InkWell(
                          onTap: controller.onCheckValue2,
                          child: Obx(
                            () => Row(
                              children: [
                                controller.checkValue2.value == 0
                                    ? const Icon(
                                        Icons.check_box_outline_blank_rounded,
                                        color: Color.fromRGBO(232, 232, 232, 1),
                                      )
                                    : const Icon(Icons.check_box_rounded,
                                        color: Color.fromRGBO(238, 125, 66, 1)),
                                Text(
                                  "無",
                                  style: GoogleFonts.notoSans(
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      text: "来店プレゼント*",
                      style: GoogleFonts.notoSans(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                            text: '*',
                            style: TextStyle(color: Colors.red, fontSize: 14)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        child: InkWell(
                          onTap: controller.onCheckValue3,
                          child: Obx(
                            () => Row(
                              children: [
                                controller.checkValue3.value == 1
                                    ? const Icon(
                                        Icons.check_box_outline_blank_rounded,
                                        color: Color.fromRGBO(232, 232, 232, 1),
                                      )
                                    : const Icon(Icons.check_box_rounded,
                                        color: Color.fromRGBO(238, 125, 66, 1)),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "有（最大３枚まで）",
                                  style: GoogleFonts.notoSans(
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 32,
                      ),
                      Container(
                        child: InkWell(
                          onTap: controller.onCheckValue3,
                          child: Obx(
                            () => Row(
                              children: [
                                controller.checkValue3.value == 0
                                    ? const Icon(
                                        Icons.check_box_outline_blank_rounded,
                                        color: Color.fromRGBO(232, 232, 232, 1),
                                      )
                                    : const Icon(Icons.check_box_rounded,
                                        color: Color.fromRGBO(238, 125, 66, 1)),
                                Text(
                                  "無",
                                  style: GoogleFonts.notoSans(
                                    textStyle: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ImageSet(name: '', hint: '', image: controller.image5),
                  const SizedBox(height: 16),
                  EditTextField(name: '来店プレゼント名', hint: 'いちごクリームアイスクリーム, ジュース'),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 46,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 30, bottom: 50),
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromRGBO(238, 125, 66, 1),
                            Color.fromRGBO(255, 200, 171, 1),
                          ],
                        ),
                      ),
                      child: Center(
                          child: Text(
                        '編集を保存',
                        style: GoogleFonts.notoSans(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            )
          ])),
        ],
      ),
    );
  }
}
