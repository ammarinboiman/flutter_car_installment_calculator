import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ResultScreenUi extends StatefulWidget {
// สร้างตัวเเปรรับค่าที่จะส่งมา
  double? carPrice;
  double? payPerMonth;
  int? month;

// เอาตัวเเปรที่สร้างมารอรับค่าที่ส่งมา

  ResultScreenUi({
    super.key,
    this.carPrice,
    this.payPerMonth,
    this.month,
  });

  @override
  State<ResultScreenUi> createState() => _ResultScreenUiState();
}

class _ResultScreenUiState extends State<ResultScreenUi> {
  @override
  Widget build(BuildContext context) {
    // กำหนดรูปเเบบของตัวเลข ณ ที่นี้ คอมมาคั่นหลักพัน / ล้าน เเละ ทศนิยม 2 ตำเเหน่ง
    NumberFormat fm = NumberFormat("#,###,##0.00");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'CI Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ผ่อนทั้งหมด ',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${widget.month}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text(
                  ' เดือน',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              'ค่างวดรถต่อเดือน',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${fm.format(widget.payPerMonth)}',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Text(
              'บาท',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
