import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_linear_datepicker/flutter_datepicker.dart';
import 'package:get/get.dart';

import '../../../HomePage.dart';

class SaveAccidentTime extends StatefulWidget {
  const SaveAccidentTime({Key? key}) : super(key: key);

  @override
  _SaveAccidentTimeState createState() => _SaveAccidentTimeState();
}

class _SaveAccidentTimeState extends State<SaveAccidentTime> {
  late TimeOfDay _timeOfDay = new TimeOfDay.now();

  void showDateDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text('Choose Date'),
              content: LinearDatePicker(
                dateChangeListener: (String selectedDate) {
                  print(selectedDate);
                },
                showMonthName: true,
                isJalaali: true,
              ),
            ));
  }

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: _timeOfDay);
    if (picked != null && picked != _timeOfDay) {
      print('time Selected : ${_timeOfDay.toString()}');
      setState(() {
        _timeOfDay = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "گزارش فوری",
          style: TextStyle(fontFamily: "Sans", fontWeight: FontWeight.bold),
        ),
        elevation: 0.7,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30, top: 10, right: 30),
        // child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              TextButton(
                  onPressed: () {
                    Get.toNamed("/mapPage");
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.blueGrey,primary: Colors.green),
                  child: Text(
                    "انتخاب محل حادثه",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w200,
                        fontFamily: "Sans",color: Colors.white),
                  )),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black54,
              ),
              Text(
                "تاریخ:",
                style: TextStyle(
                    fontFamily: "Sans",
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
              SizedBox(
                height: 20,
              ),
              LinearDatePicker(
                  startDate: "1390/00/00",
                  //yyyy/mm/dd
                  endDate: "1500/02/20",
                  // initialDate: "1400/09/03",
                  dateChangeListener: (_) {},
                  showDay: true,
                  //false -> only select year & month
                  labelStyle: TextStyle(
                    fontFamily: 'sans',
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  selectedRowStyle: TextStyle(
                    fontFamily: 'sans',
                    fontSize: 18.0,
                    color: Colors.deepOrange,
                  ),
                  unselectedRowStyle: TextStyle(
                    fontFamily: 'sans',
                    fontSize: 16.0,
                    color: Colors.blueGrey,
                  ),
                  yearText: "سال | year",
                  monthText: "ماه | month",
                  dayText: "روز | day",
                  showLabels: true,
                  // to show column captions, eg. year, month, etc.
                  columnWidth: 100,
                  showMonthName: true,
                  isJalaali: true // false -> Gregorian
                  ),
              TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.green, backgroundColor: Colors.blueGrey),
                  onPressed: () {
                    showDateDialog(context);
                  },
                  child: Text("تنظیم تاریخ",
                      style:
                          TextStyle(color: Colors.white, fontFamily: "Sans"))),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.black54,
              ),
              Text(
                "زمان:",
                style: TextStyle(
                    fontFamily: "Sans",
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "${_timeOfDay.hour} : ${_timeOfDay.minute}",
                  // _timeOfDay.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Sans",
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.green, backgroundColor: Colors.blueGrey),
                child: Text(
                  "تغییر ساعت حادثه",
                  style: TextStyle(color: Colors.white, fontFamily: "Sans"),
                ),
                onPressed: () {
                  _selectTime(context);
                },
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 60, right: 60),
                child: Material(
                  elevation: 10,
                  shadowColor: Colors.grey[800],
                  color: Colors.blueGrey[500],
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "ارسال گزارش",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "Sans"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      // ),
    );
  }
}
