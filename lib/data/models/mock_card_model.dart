import 'package:flutter/material.dart';

class MockCardModel {
  int? id;
  String? balanceIdr, name, code, numberCensored;
  // For card background color
  Color? color;

  MockCardModel({
    this.id,
    this.numberCensored,
    this.balanceIdr,
    this.name,
    this.code,
    this.color,
  });
}

final List<MockCardModel> mockListCards = [
  MockCardModel(
    id: 1,
    numberCensored: "**** **** **** 6751",
    balanceIdr: "Rp. 781.900",
    code: "11/26",
    color: Color(0xFFFC6F6F),
    name: "Hutomo S"
  ),
  MockCardModel(
    id: 2,
    numberCensored: "**** **** **** 6751",
    balanceIdr: "Rp. 900.900",
    code: "11/26",
    color: Color(0xFF7690E8),
    name: "Asril M"
  ),
];
