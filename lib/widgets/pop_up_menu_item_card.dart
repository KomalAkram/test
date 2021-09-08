import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

popUpMenuItemCard({
  text,
  ontap,
  textt,
  ontapp,
  texttt,
  ontappp,
}) {
  return PopupMenuButton(
      itemBuilder: (context) => [
            //  var list = List<PopupMenuEntry<Object>>();
            PopupMenuItem(
              child: InkWell(onTap: ontap, child: Text(text)),
              value: 1,
            ),
            PopupMenuItem(
              child: InkWell(onTap: ontapp, child: Text(textt)),
              value: 2,
            ),
             PopupMenuItem(
              child: InkWell(onTap: ontappp, child: Text(texttt)),
              value: 2,
            ),
          ]);
}
