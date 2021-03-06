import 'package:flutter/material.dart';

class MockHistoryTransactionModel {
  int? id;
  String? title, description, date, priceDollar;
  // For backgroundColor
  Color? color;
  // For icon from assets
  String? iconName;

  MockHistoryTransactionModel({
    this.id,
    this.title,
    this.description,
    this.date,
    this.priceDollar,
    this.color,
    this.iconName,
  });
}

final List<MockHistoryTransactionModel> mockListHistoryTransactions = [
  MockHistoryTransactionModel(
    id: 1,
    title: "Play Store",
    description: "Top UP FF",
    date: "08:30 AM",
    color: Color(0xFF45BAFB),
    iconName: "category.png",
    priceDollar: "\$189.00",
  ),
  MockHistoryTransactionModel(
    id: 2,
    title: "Cashback",
    description: "Tokopedia",
    date: "11:30 AM",
    color: Color(0xFF6FDE73),
    iconName: "cart.png",
    priceDollar: "\$29.00",
  ),
  MockHistoryTransactionModel(
    id: 3,
    title: "Dewa Kipas",
    description: "Send Money",
    date: "01:30 AM",
    color: Color(0xFF8F97FA),
    iconName: "send.png",
    priceDollar: "\$10.00",
  ),
];

final List<MockHistoryTransactionModel> mockListHistoryTransactionsThisWeek = [
  MockHistoryTransactionModel(
    id: 1,
    title: "Deposit",
    description: "Add Money",
    date: "08:30 AM",
    color: Color(0xFFFDAA4A),
    iconName: "wallet.png",
    priceDollar: "\$189.00",
  ),
  MockHistoryTransactionModel(
    id: 2,
    title: "Netflix",
    description: "Billing Payment",
    date: "11:30 AM",
    color: Color(0xFFED5C5C),
    iconName: "cart.png",
    priceDollar: "\$29.00",
  ),
  MockHistoryTransactionModel(
    id: 3,
    title: "Cashback",
    description: "Tokopedia",
    date: "11:30 AM",
    color: Color(0xFF6FDE73),
    iconName: "cart.png",
    priceDollar: "\$29.00",
  ),
  MockHistoryTransactionModel(
    id: 4,
    title: "Play Store",
    description: "Top UP FF",
    date: "08:30 AM",
    color: Color(0xFF45BAFB),
    iconName: "category.png",
    priceDollar: "\$189.00",
  ),
];

final List<MockHistoryTransactionModel> mockListHistoryTransactionsThisMonth = [
   MockHistoryTransactionModel(
    id: 1,
    title: "Play Store",
    description: "Top UP FF",
    date: "08:30 AM",
    color: Color(0xFF45BAFB),
    iconName: "category.png",
    priceDollar: "\$189.00",
  ),
  MockHistoryTransactionModel(
    id: 2,
    title: "Cashback",
    description: "Tokopedia",
    date: "11:30 AM",
    color: Color(0xFF6FDE73),
    iconName: "cart.png",
    priceDollar: "\$29.00",
  ),
  MockHistoryTransactionModel(
    id: 3,
    title: "Dewa Kipas",
    description: "Send Money",
    date: "01:30 AM",
    color: Color(0xFF8F97FA),
    iconName: "send.png",
    priceDollar: "\$10.00",
  ),
  MockHistoryTransactionModel(
    id: 1,
    title: "Deposit",
    description: "Add Money",
    date: "08:30 AM",
    color: Color(0xFFFDAA4A),
    iconName: "wallet.png",
    priceDollar: "\$189.00",
  ),
  MockHistoryTransactionModel(
    id: 2,
    title: "Netflix",
    description: "Billing Payment",
    date: "11:30 AM",
    color: Color(0xFFED5C5C),
    iconName: "cart.png",
    priceDollar: "\$29.00",
  ),
];
