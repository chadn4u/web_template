/// WidgetCategory of the each control as Data Visualization, Editors,etc.,
class WidgetCategory {
  /// Constructor holds the name, id, control collection of the [WidgetCategory]
  WidgetCategory(
      [this.categoryName,
      this.controlList,
      this.mobileCategoryId,
      this.webCategoryId,
      this.platformsToHide]);

  /// Getting the control details from the json file
  factory WidgetCategory.fromJson(Map<String, dynamic> json) {
    return WidgetCategory(
        json['categoryName'],
        json['controlList'],
        json['mobileCategoryId'],
        json['webCategoryId'],
        json['platformsToHide']);
  }

  /// Name of the category
  String? categoryName;

  /// Control collection under the particular category
  List<dynamic>? controlList;

  /// Sorting the categories based on this id in mobile.
  final int? mobileCategoryId;

  /// Sorting the categories based on this id in web.
  final int? webCategoryId;

  /// Selected control in the controllist under the particular category
  int? selectedIndex = 0;

  /// To specify the category not to show on the web/android/iOS/windows/linux/macOS
  /// platforms in list format.
  ///
  /// Eg: In json file we can specify like below,
  ///
  /// "platformsToHide": ["linux", "android"] => the specific category should not show on the linux and android platforms
  final List<dynamic>? platformsToHide;
}
