import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test_app/utils/size_configuration.dart';

import '../../../utils/utils.dart';

class DropDown extends StatelessWidget {
  var dropdownValue1 = '10 : 00';
  List<String> list = <String>['10 : 00', '09 : 00', '08 : 00', '07 : 00'];

  DropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1.0,
              style: BorderStyle.solid,
              color: Color.fromRGBO(199, 196, 192, 1)),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
      child: DropdownButton<String>(
        dropdownColor: Colors.white,
        value: dropdownValue1,
        icon: Container(
          padding: const EdgeInsets.only(left: 5),
          child: const Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 26,
            color: Color.fromRGBO(199, 196, 192, 1),
          ),
        ),
        elevation: 0,
        style: const TextStyle(color: Colors.black),
        underline: Container(
          height: 0,
        ),
        onChanged: (String? value) {
          dropdownValue1 = value.toString();
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class DropDown2 extends StatelessWidget {
  List<String> lists = <String>[
    '料理カテゴリー選択択',
    '料理カテゴリー選択',
    '料理カテゴリー選択',
    '料理カテゴリー選択'
  ];
  var dropdownContent = '料理カテゴリー選択択';

  DropDown2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 1.0,
                    style: BorderStyle.solid,
                    color: Color.fromRGBO(199, 196, 192, 1)),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
            child: DropdownButton<String>(
              dropdownColor: Colors.white,
              value: dropdownContent,
              icon: Container(
                padding: const EdgeInsets.only(left: 20),
                child: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 35,
                  color: Color.fromRGBO(199, 196, 192, 1),
                ),
              ),
              elevation: 0,
              style: const TextStyle(color: Color.fromRGBO(199, 196, 192, 1)),
              underline: Container(
                height: 0,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? value) {
                dropdownContent = value.toString();
              },
              items: lists.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
      ],
    );
  }
}

class CheckList extends StatefulWidget {
  const CheckList({Key? key}) : super(key: key);

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  List check = [
    {"check": false, "title": "月"},
    {"check": false, "title": "火"},
    {"check": false, "title": "水"},
    {"check": false, "title": "木"},
    {"check": false, "title": "金"},
    {"check": true, "title": "土"},
    {"check": true, "title": "日"},
    {"check": true, "title": "祝"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: "定休日",
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
              )
            ],
          ),
        ),
        Container(
          height: 85,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        title: const Text('月'),
                        value: false,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    Expanded(
                      child: CheckboxListTile(
                        title: const Text('火'),
                        value: false,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    Expanded(
                      child: CheckboxListTile(
                        title: const Text('水'),
                        value: false,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    Expanded(
                      child: CheckboxListTile(
                        title: const Text('木'),
                        value: false,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) {},
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        title: const Text('金'),
                        value: false,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    Expanded(
                      child: CheckboxListTile(
                        title: const Text('土'),
                        value: true,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    Expanded(
                      child: CheckboxListTile(
                        title: const Text('日'),
                        value: true,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    Expanded(
                      child: CheckboxListTile(
                        title: const Text('祝'),
                        value: true,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class EditTextField extends StatelessWidget {
  final String name;
  final String hint;
  final String? Function(String?)? validator;

  EditTextField({
    Key? key,
    required this.name,
    required this.hint,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: name,
            style: GoogleFonts.notoSans(
              textStyle: const TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            children: const <TextSpan>[
              TextSpan(
                  text: '*', style: TextStyle(color: Colors.red, fontSize: 14)),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 45,
          child: TextFormField(
            validator: (text) => valRequired(text!),
            decoration: InputDecoration(
              hintText: hint,
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
                borderSide:
                    const BorderSide(color: Color.fromRGBO(232, 232, 232, 1)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ImageSet extends StatelessWidget {
  final String name;
  final String hint;
  final List image;
  final onTap;

  const ImageSet({
    Key? key,
    required this.name,
    required this.hint,
    required this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (name.isNotEmpty)
          RichText(
            text: TextSpan(
              text: name,
              style: GoogleFonts.notoSans(
                textStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              children: <TextSpan>[
                TextSpan(
                    text: '* ',
                    style: const TextStyle(color: Colors.red, fontSize: 14),
                    children: [
                      TextSpan(
                        text: ' (${hint})',
                        style: GoogleFonts.notoSans(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(156, 152, 150, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
            height: 105,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: image.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: Stack(
                      // alignment: Alignment.topRight,
                      children: [
                        InkWell(
                          onTap: onTap,
                          child: Container(
                            height: 101,
                            width: 101,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(image[index]["image"]),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -3,
                          right: -3,
                          child: IconButton(
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  );
                })),
      ],
    );
  }
}
