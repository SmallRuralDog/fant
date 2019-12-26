import 'package:flutter/material.dart';

import 'button_size_data.dart';

enum FantButtonTypes { info, primary, warning, danger }
enum FantButtonSize { large, small, mini }

class FantButton extends StatefulWidget {
  //Props
  final FantButtonTypes type;
  final FantButtonSize size;
  final String text;
  final Color color;
  final Widget icon;
  final double elevation;
  final bool block;
  final bool plain;
  final bool square;
  final bool round;
  final bool disabled;
  final bool hairline;
  final bool loading;
  final String loadingText;
  final double radius;
  //Events
  final VoidCallback click;

  const FantButton(
      {Key key,
      this.type,
      this.click,
      this.size,
      this.text,
      this.color,
      this.elevation = 0.0,
      this.icon,
      this.block = false,
      this.plain = false,
      this.square = false,
      this.round = false,
      this.disabled = false,
      this.loading = false,
      this.loadingText,
      this.hairline = false,
      this.radius = 2.0})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => FantButtonState();
}

class FantButtonState extends State<FantButton> {
  Color get borderColor {
    return color == Colors.white ? Color(0xffebedf0) : color;
  }

  Color get bodyColor {
    return widget.plain ? Colors.white : color;
  }

  Color get textColor {
    return widget.plain
        ? color == Colors.white ? Color(0xff323233) : color
        : color == Colors.white ? Color(0xff323233) : Colors.white;
  }

  Color get color {
    Color typeColor = Colors.white;
    switch (widget.type) {
      case FantButtonTypes.primary:
        typeColor = Color(0xFF07c160);
        break;
      case FantButtonTypes.info:
        typeColor = Color(0xFF1989fa);
        break;
      case FantButtonTypes.danger:
        typeColor = Color(0xFFee0a24);
        break;
      case FantButtonTypes.warning:
        typeColor = Color(0xFFff976a);
        break;
      default:
        typeColor = Colors.white;
    }
    return widget.color is Color ? widget.color : typeColor;
  }

  double get radius {
    if (widget.square) {
      return 0.0;
    }
    if (widget.round) {
      return 150.0;
    }
    return 2.0;
  }

  get shape {
    return widget.plain || color == Colors.white
        ? RoundedRectangleBorder(
            side: BorderSide(
                width: widget.hairline
                    ? 1.0 / MediaQuery.of(context).devicePixelRatio
                    : 1.0,
                color: borderColor),
            borderRadius: BorderRadius.circular(radius))
        : RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));
  }

  String get text {
    if (widget.loading && widget.loadingText is String) {
      return widget.loadingText;
    }
    return widget.text;
  }

  EdgeInsetsGeometry get padding {
    switch (widget.size) {
      case FantButtonSize.large:
        return EdgeInsets.fromLTRB(20, 0, 20, 0);
        break;
      case FantButtonSize.small:
        return EdgeInsets.fromLTRB(10, 0, 10, 0);
        break;
      case FantButtonSize.mini:
        return EdgeInsets.fromLTRB(0, 0, 0, 0);
        break;
      default:
        return EdgeInsets.fromLTRB(15, 0, 15, 0);
    }
  }

  double get textFontSize {
    switch (widget.size) {
      case FantButtonSize.large:
        return 16.0;
        break;
      case FantButtonSize.small:
        return 12.0;
        break;
      case FantButtonSize.mini:
        return 10.0;
        break;
      default:
        return 14.0;
    }
  }

  FantButtonSizeData get sizeData {
    switch (widget.size) {
      case FantButtonSize.large:
        FantButtonSizeData sizeData = FantButtonSizeData();
        sizeData.textFontSize = 16.0;
        sizeData.padding = EdgeInsets.fromLTRB(15, 0, 15, 0);
        sizeData.height = 50.0;
        sizeData.minWidth = 50.0;
        sizeData.loadinIconSize = 16.0;
        return sizeData;
        break;
      case FantButtonSize.small:
        FantButtonSizeData sizeData = FantButtonSizeData();
        sizeData.textFontSize = 12.0;
        sizeData.padding = EdgeInsets.fromLTRB(8, 0, 8, 0);
        sizeData.height = 30.0;
        sizeData.minWidth = 30.0;
        sizeData.loadinIconSize = 12.0;
        return sizeData;
        break;
      case FantButtonSize.mini:
        FantButtonSizeData sizeData = FantButtonSizeData();
        sizeData.textFontSize = 10.0;
        sizeData.padding = EdgeInsets.fromLTRB(3, 0, 3, 0);
        sizeData.height = 22.0;
        sizeData.minWidth = 22.0;
        sizeData.loadinIconSize = 8.0;
        return sizeData;
        break;
      default:
        FantButtonSizeData sizeData = FantButtonSizeData();
        sizeData.textFontSize = 14.0;
        sizeData.padding = EdgeInsets.fromLTRB(15, 0, 15, 0);
        sizeData.height = 44.0;
        sizeData.minWidth = 44.0;
        sizeData.loadinIconSize = 14.0;
        return sizeData;
    }
  }

  bool get disabled => widget.disabled || widget.loading;

  @override
  Widget build(BuildContext context) {
    Widget indicator = widget.loading
        ? Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: SizedBox(
              width: sizeData.loadinIconSize * 0.9,
              height: sizeData.loadinIconSize * 0.9,
              child: CircularProgressIndicator(
                strokeWidth: 1.0,
                backgroundColor: bodyColor,
                valueColor: AlwaysStoppedAnimation(textColor),
              ),
            ),
          )
        : SizedBox(
            width: 0,
          );

    var materialButton = MaterialButton(
      onPressed: disabled ? null : widget.click,
      elevation: widget.elevation,
      focusElevation: widget.elevation,
      highlightElevation: widget.elevation,
      disabledElevation: widget.elevation,
      color: bodyColor,
      shape: shape,
      textColor: textColor,
      disabledColor: bodyColor,
      disabledTextColor: textColor,
      padding: sizeData.padding,
      height: sizeData.height,
      minWidth: sizeData.minWidth,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          indicator,
          Text(
            text,
            style: TextStyle(fontSize: sizeData.textFontSize, height: 1.0),
          )
        ],
      ),
    );
    return Opacity(opacity: disabled ? 0.5 : 1.0, child: materialButton);
  }
}
