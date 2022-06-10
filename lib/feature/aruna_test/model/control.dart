import 'package:web_template/feature/aruna_test/model/subItem.dart';

/// Defines the control class.
class Control {
  /// Contructor holds the tile, description, status etc., of the [Control]
  Control(
      this.title,
      this.description,
      this.image,
      this.status,
      this.displayType,
      this.subItems,
      this.controlId,
      this.isBeta,
      this.platformsToHide);

  /// Getting the control details from the json file
  factory Control.fromJson(Map<String, dynamic> json) {
    return Control(
        json['title'],
        json['description'],
        json['image'],
        json['status'],
        json['displayType'],
        json['subItems'],
        json['controlId'],
        json['isBeta'],
        json['platformsToHide']);
  }

  /// Contains title of the control, display in the home page
  final String? title;

  /// Contains description of the control, display in the home page
  final String? description;

  /// Contains image relates to the control, display in the home page
  final String? image;

  /// Conatins status of the control New/Updated/Beta
  final String? status;

  /// Display the controls based on this order.
  final int? controlId;

  /// Need to mention this when samples directly given without any sub category
  /// Mention as card/fullView, by default it will taken as "fullView".
  final String? displayType;

  /// Contains the subItem list which comes under sample type
  List<SubItem>? sampleList;

  /// Contains the subItem list which comes under [child] type
  List<SubItem>? childList;

  /// Contains the sample details collection
  List<dynamic>? subItems;

  /// To specify the control is beta or not in `https://pub.dev/publishers/syncfusion.com/packages`
  final bool? isBeta;

  /// To specify the control not to show on the web/android/iOS/windows/linux/macOS
  /// platforms in list format.
  ///
  /// Eg: In json file we can specify like below,
  ///
  /// "platformsToHide": ["linux", "android"] => the current control should not show on the linux and android platforms
  final List<dynamic>? platformsToHide;
}
