import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:transfer_homeone/page/menu_page.dart';

class ShowSecondPage extends StatefulWidget {
  const ShowSecondPage({Key? key}) : super(key: key);

  @override
  State<ShowSecondPage> createState() => _ShowSecondPageState();
}

class _ShowSecondPageState extends State<ShowSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#DADADA"),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ขอโอนสินค้า-ระหว่างคลัง (RI)',
          style: GoogleFonts.kanit(fontSize: 15),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MenuPage()),
              );
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
        ),
        backgroundColor: HexColor("#244EB9"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.playlist_add_circle_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('เลขที่เอกสารxxx01(RI)',
                      style: GoogleFonts.kanit(fontSize: 12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 50,
                          color: HexColor('#244EB9'),
                          child: Text(
                            'ซ่อน',
                            style: GoogleFonts.kanit(
                                fontSize: 12, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Gap(20),
                      Text(
                        '1/2',
                        style: GoogleFonts.kanit(fontSize: 15),
                      )
                    ],
                  ),
                ],
              ),
              Gap(20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('ที่เก็บต้นทาง',
                          style: GoogleFonts.kanit(fontSize: 15)),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 40,
                          color: HexColor('#37B218'),
                          child: const Icon(
                            Icons.compare_arrows_rounded,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text('ที่เก็บปลายทาง',
                          style: GoogleFonts.kanit(fontSize: 15)),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: const [
                      Expanded(child: MyStatefulWidget()),
                      Gap(10),
                      Expanded(child: MyStatefulWidget()),
                    ],
                  ),
                ],
              ),
              Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'หมายเหตุ',
                    style: GoogleFonts.kanit(fontSize: 15),
                  ),
                  Gap(10),
                  Container(
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: ''),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'เอกสารอ้างอิง',
                    style: GoogleFonts.kanit(fontSize: 15),
                  ),
                  Gap(10),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: ''),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(150),
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(14),
                          bottomLeft: Radius.circular(14)),
                      child: Container(
                        height: 50,
                        color: Colors.white,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'ยกเลิก',
                            style: GoogleFonts.kanit(
                                fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(14),
                          bottomRight: Radius.circular(14)),
                      child: Container(
                        height: 50,
                        color: HexColor('#244EB9'),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'ตกลง',
                            style: GoogleFonts.kanit(
                                fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 34,
        color: Colors.white,
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Padding(
            padding: EdgeInsets.only(left: 110),
            child: Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ),
          elevation: 16,
          style: GoogleFonts.kanit(color: HexColor('#9F9B9B'), fontSize: 12),
          underline: Container(
            height: 2,
            color: Colors.transparent,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
