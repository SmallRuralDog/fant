import 'package:flutter/material.dart';
import 'package:fant/fant.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: Container(
        color: Color(0xfff8f8f8),
        child: ListView(
          padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Text("按钮类型"),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                FantButton(
                  text: "默认按钮",
                  click: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                FantButton(
                  text: "主要按钮",
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                FantButton(
                  text: "信息按钮",
                  type: FantButtonTypes.info,
                  click: () {},
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                FantButton(
                  text: "危险按钮",
                  type: FantButtonTypes.danger,
                  click: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                FantButton(
                  text: "警告按钮",
                  type: FantButtonTypes.warning,
                  click: () {},
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Text("朴素按钮"),
            ),
            Row(
              children: <Widget>[
                FantButton(
                  text: "朴素按钮",
                  plain: true,
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                FantButton(
                  text: "朴素按钮",
                  plain: true,
                  type: FantButtonTypes.info,
                  click: () {},
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Text("细边框"),
            ),
            Row(
              children: <Widget>[
                FantButton(
                  text: "细边框按钮",
                  plain: true,
                  hairline: true,
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                FantButton(
                  text: "细边框按钮",
                  plain: true,
                  hairline: true,
                  type: FantButtonTypes.info,
                  click: () {},
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Text("禁用状态"),
            ),
            Row(
              children: <Widget>[
                FantButton(
                  text: "禁用状态",
                  hairline: true,
                  disabled: true,
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                FantButton(
                  text: "禁用状态",
                  plain: true,
                  hairline: true,
                  disabled: true,
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Text("加载状态"),
            ),
            Row(
              children: <Widget>[
                FantButton(
                  text: "禁用状态",
                  loading: true,
                  loadingText: "",
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                FantButton(
                  text: "加载状态",
                  plain: true,
                  loading: true,
                  hairline: true,
                  disabled: true,
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                FantButton(
                  text: "加载状态",
                  loadingText: "加载中...",
                  plain: true,
                  loading: true,
                  hairline: true,
                  disabled: true,
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Text("按钮形状"),
            ),
            Row(
              children: <Widget>[
                FantButton(
                  text: "方形按钮",
                  square: true,
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                FantButton(
                  text: "圆形按钮",
                  round: true,
                  type: FantButtonTypes.info,
                  click: () {},
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Text("按钮尺寸"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Container(
                child: FantButton(
                  text: "大号按钮",
                  size: FantButtonSize.large,
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
              ),
            ),
            Row(
              children: <Widget>[
                FantButton(
                  text: "普通按钮",
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                FantButton(
                  text: "小型按钮",
                  size: FantButtonSize.small,
                  type: FantButtonTypes.info,
                  click: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                FantButton(
                  text: "迷你按钮",
                  size: FantButtonSize.mini,
                  type: FantButtonTypes.info,
                  click: () {},
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Text("自定义颜色"),
            ),
            Row(
              children: <Widget>[
                FantButton(
                  text: "单色按钮",
                  color: Color(0xff7232dd),
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                FantButton(
                  text: "单色按钮",
                  plain: true,
                  loading: true,
                  color: Color(0xff455a64),
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                FantButton(
                  text: "单色按钮",
                  disabled: true,
                  color: Color(0xff5758bb),
                  type: FantButtonTypes.primary,
                  click: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
