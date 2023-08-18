class FilterModel {
  final String filterName;
  bool isSelected;
  FilterModel({required this.filterName, this.isSelected = false});
}

List<FilterModel> filterList = [
  FilterModel(filterName: "Allon Gullery"),
  FilterModel(filterName: "Ayeno Murayama"),
  FilterModel(filterName: "Fractal Kust"),
  FilterModel(filterName: "Ibrahim Hassam"),
  FilterModel(filterName: "Locand Nagy"),
  FilterModel(filterName: "Make Gardon"),
];
