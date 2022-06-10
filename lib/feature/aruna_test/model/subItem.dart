import 'control.dart';

/// Contains the detail of sample in different hierarchy levels
/// parent, child, sample types
class SubItem {
  /// It holds the type, title, key, description etc., of the sample
  SubItem(
      [this.type,
      this.displayType,
      this.title,
      this.key,
      this.codeLink,
      this.description,
      this.status,
      this.subItems,
      this.sourceLink,
      this.sourceText,
      this.needsPropertyPanel,
      this.platformsToHide]);

  /// Getting the SubItem details from the json file
  factory SubItem.fromJson(Map<String, dynamic> json) {
    return SubItem(
        json['type'],
        json['displayType'],
        json['title'],
        json['key'],
        json['codeLink'],
        json['description'],
        json['status'],
        json['subItems'],
        json['sourceLink'],
        json['sourceText'],
        json['needsPropertyPanel'],
        json['platformsToHide']);
  }

  /// Type given as parent/child/sample.
  /// if "parent" is given then primary tab and secondary tab both come.
  /// for "parent", "child" type must be give to subItems(next hierarchy).
  /// if "child" is given only primary tab will come.
  /// if "sample" is given no tab will come.
  /// by default it taken as "sample".
  /// Note: In all cases displayType is given as "fullView",
  /// additionally sample's tab will come.
  final String? type;

  /// Mention the samples layout.
  /// displayType given as card/fullView.
  /// by default it taken as "fullView".
  /// Note: Need to mention this when on display type is child.
  final String? displayType;

  /// Need to mention in all type.
  final String? title;

  /// Below values need to give when type is "sample".
  final String? key;

  /// Contains Github sample link
  final String? codeLink;

  /// Contains the description of the sample
  /// to be displayed in the sample backpanel
  final String? description;

  /// Status of the sample, displays above the sample
  final String? status;

  /// SourceLink which will launch a url of the sample's source
  /// on tapping source text present under the sample.
  final String? sourceLink;

  /// Short form of the source link which will displays under the sample.
  final String? sourceText;

  /// No need to give when type is "sample".
  List<dynamic>? subItems;

  /// If current sample has property panel mention true.
  final bool? needsPropertyPanel;

  /// Contains appropriate category name
  String? categoryName;

  ///Holds the URL text
  String? breadCrumbText;

  ///Current parent subItem index
  int? parentIndex;

  ///Current child subItem index
  int? childIndex;

  ///Current child subItem index
  int? sampleIndex;

  /// Holds appropriate control
  Control? control;

  /// To specify the sample not to show on the web/android/iOS/windows/linux/macOS
  /// platforms in list format.
  ///
  /// Eg: In json file we can specify like below,
  ///
  /// "platformsToHide": ["linux", "android"] => the specific sample should not show on the linux and android platforms
  final List<dynamic>? platformsToHide;
}
