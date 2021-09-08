import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownMenuCard extends StatefulWidget {
  @override
  _DropDownMenuCardState createState() => _DropDownMenuCardState();
}

class _DropDownMenuCardState extends State<DropDownMenuCard> {
  List<String> stringItems = [
    'Item 1',
    'Item 2',
    'Item 3',
  ];

  var choice = 'Item 1';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          elevation: 6.r,
          child: DropdownButtonHideUnderline(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[200]),
                 borderRadius: BorderRadius.circular(5.r)
              ),
              padding: EdgeInsets.only(left: 10.w),
              child: DropdownButton<String>(
                  hint: Text(
                    "Interest",
                    style: TextStyle(color: Colors.grey),
                  ),
                  icon: Icon(
                    Icons.arrow_drop_down_outlined,
                    color: Colors.grey[600],
                  ),
                  // value: choice,
                  items:
                      stringItems.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: getListTile(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      choice = newValue.toString();
                    });
                  }),
            ),
          )),
    );
  }
}

Widget getListTile(String value) {
  return Container(
      color: Colors.white,
      width: 70.w,
      child: Column(
        children: [
          Text(value),
        ],
      ));
}
