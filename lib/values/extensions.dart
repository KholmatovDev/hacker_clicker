import 'package:flutter/material.dart';

extension KeyExtension on GlobalKey {
  Size getSize() {
    var context = currentContext;
    Size size =
        context != null
            ? (context.findRenderObject() as RenderBox).size
            : const Size(0, 0);
    return Size(size.width.ceilToDouble(), size.height.ceilToDouble());
  }
}

extension WidgetExtension on Widget {
  Widget paddingAll([double all = 0.0]) =>
      Padding(padding: EdgeInsets.all(all), child: this);

  Widget paddingSymmetric({double? horizontal, double? vertical}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal ?? 0,
        vertical: vertical ?? 0,
      ),
      child: this,
    );
  }

  Widget paddingOnly({
    double? left,
    double? right,
    double? top,
    double? bottom,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left ?? 0,
        right: right ?? 0,
        top: top ?? 0,
        bottom: bottom ?? 0,
      ),
      child: this,
    );
  }

  Widget circleRadius([double radius = 0]) =>
      ClipRRect(borderRadius: BorderRadius.circular(radius), child: this);

  Widget backgroundColor([Color color = Colors.transparent]) =>
      Material(color: color, child: this);

  Widget opacity([double opacity = 1.0]) =>
      Opacity(opacity: opacity, child: this);

  Widget visibility([bool visible = true]) =>
      Visibility(visible: visible, child: this);

  Widget expanded([int flex = 1]) => Expanded(flex: flex, child: this);

  Widget flexible([int flex = 1]) => Flexible(flex: flex, child: this);
}

extension LocaleExtension on Locale {
  getLangName() {
    switch (countryCode) {
      case "RU":
        return "Русский";
      case "Cyrl-UZ":
        return "Ўзбекча";
      case "Latn-UZ":
        return "O'zbekcha";
      default:
        return "none";
    }
  }

  getLangShortName() {
    switch (countryCode) {
      case "RU":
        return "ru";
      case "Cyrl-UZ":
        return "cyrl";
      case "Latn-UZ":
        return "uz";
      default:
        return "none";
    }
  }
}

extension Space on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}
