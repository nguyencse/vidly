import 'package:flutter/material.dart';
import 'package:vidly/resources/common/icolor.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leading;
  final Widget title;
  final List<Widget> actions;
  final Color color;
  final bool centerTitle;

  CustomAppBar(
      {Key key,
      this.leading,
      this.title,
      this.actions,
      this.color,
      this.centerTitle = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   border: Border(
      //     bottom: BorderSide(
      //         color: IColors.saperateColor,
      //         width: 1.0,
      //         style: BorderStyle.solid),
      //   ),
      // ),
      child: AppBar(
        leading: this.leading,
        title: this.title,
        actions: this.actions,
        centerTitle: this.centerTitle,
        backgroundColor: this.color,
        elevation: 0,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
