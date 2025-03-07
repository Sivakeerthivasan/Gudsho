import 'package:flutter/material.dart';

/// Default search bar input decoration.
const kInputDecoration = InputDecoration(
  enabledBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Color(0xffc9ced2))),
  hintText: "Search",
  hintStyle: TextStyle(fontSize: 12, color: Color(0xffc9ced2)),
  prefixIcon: Icon(
    Icons.search,
    color: Color(0xffc9ced2),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(kBorderRadius),
    borderSide: BorderSide(
      width: 2,
      style: BorderStyle.none,
    ),
  ),
  filled: true,
  contentPadding: EdgeInsets.symmetric(horizontal: 16),
  fillColor: Colors.white,
);

/// Default favorites icon.
const kFavoritesIcon = Icon(Icons.favorite, color: Colors.red);

/// Default modal and TextField default borderRadius.
const kBorderRadius = Radius.circular(10);

/// Default modal background color.
const kBackgroundColor = Color(0xFFFFFFFF);

/// Default modal barrier color.
const kBarrierColor = Color(0xffc9ced2);

/// Default modal shape.
const kShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topLeft: kBorderRadius,
    topRight: kBorderRadius,
  ),
);
