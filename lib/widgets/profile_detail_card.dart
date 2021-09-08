import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plural_app/widgets/description_card.dart';
import 'package:plural_app/widgets/drawer_header_card.dart';
import 'package:plural_app/widgets/numbers_text_card.dart';

profileDetailCard({
  numbers,
  text,
  numberss,
  textt,
  image,
  name,
}) {
  return Card(
    child: Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              numbersTextCard(
                numbers: numbers,
                text: text,
              ),
              numbersTextCard(
                numbers: numberss,
                text: textt,
              )
            ],
          ),
          Column(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 30.r,
                  backgroundImage: NetworkImage(
                    image,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                name,
                style: TextStyle(
                  color: Color(0xFF009fff),
                ),
              ),
              descriptionCard(
                text: 'Lorem ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum',
                textalign: TextAlign.center
              )
            ],
          ),
        ],
      ),
    ),
  );
}
