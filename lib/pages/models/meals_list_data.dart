class PickUpListData {
  PickUpListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<PickUpListData> tabIconsList = <PickUpListData>[
    PickUpListData(
      imagePath: 'assets/images/garbage.png',
      titleTxt: 'Plastic:',
      kacl: 24,
      meals: <String>['PET bottles,', 'food packs,', 'plastic waste,', 'etc.'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    PickUpListData(
      imagePath: 'assets/images/stink.png',
      titleTxt: 'Bio-Degradable',
      kacl: 60,
      meals: <String>['food,', 'animal dung,', 'natural waste,', 'etc.'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    PickUpListData(
      imagePath: 'assets/images/trash.png',
      titleTxt: 'Household:',
      kacl: 0,
      meals: <String>['trash', 'daily waste'],
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
    PickUpListData(
      imagePath: 'assets/images/trash-can.png',
      titleTxt: 'Harzadous:',
      kacl: 0,
      meals: <String>['Harzadous waste', 'chemical waste'],
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
  ];
}
