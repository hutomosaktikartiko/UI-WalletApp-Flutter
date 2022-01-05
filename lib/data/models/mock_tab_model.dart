class MockTabModel {
  int? id;
  String? label, iconName;

  MockTabModel({
    this.id,
    this.label,
    this.iconName,
  });
}

final List<MockTabModel> mockListTab = [
  MockTabModel(
    id: 1,
    label: "Home",
    iconName: "home.png",
  ),
  MockTabModel(
    id: 2,
    label: "Wallet",
    iconName: "wallet.png",
  ),
  MockTabModel(
    id: 3,
    label: "Statistics",
    iconName: "statistics.png",
  ),
  MockTabModel(
    id: 4,
    label: "Setting",
    iconName: "setting.png",
  ),
];
