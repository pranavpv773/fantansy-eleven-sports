library custom_switch;

import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color inactiveColor;
  final String activeText;
  final String inactiveText;
  final Color activeTextColor;
  final Color inactiveTextColor;

  const CustomSwitch(
      {required this.value,
      required this.onChanged,
      required this.activeColor,
      this.inactiveColor = Colors.grey,
      this.activeText = '',
      this.inactiveText = '',
      this.activeTextColor = Colors.white70,
      this.inactiveTextColor = Colors.white70});

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  late Animation _circleAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            width: 50.0,
            height: 25.0,
            decoration: _circleAnimation.value == Alignment.centerLeft
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: widget.activeColor,
                    gradient: CommonFunction.themeGradient)
                : BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey.shade200,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffa3b1c6), // darker color
                      ),
                      BoxShadow(
                        color: Color(0xffe0e5ec), // background color
                        spreadRadius: -12.0,
                        blurRadius: 12.0,
                      ),
                    ],
                  ),

            // ]),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 4.0, bottom: 4.0, right: 1.0, left: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _circleAnimation.value == Alignment.centerRight
                      ? Padding(
                          padding: const EdgeInsets.only(left: 25.0, right:0 ),
                          child: Text(
                            "",
                            // widget.activeText,
                            style: TextStyle(
                                color: widget.activeTextColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 1.0),
                          ),
                        )
                      : Container(),
                  Align(
                    alignment: _circleAnimation.value,
                    child: Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                  _circleAnimation.value == Alignment.centerLeft
                      ? Padding(
                          padding: const EdgeInsets.only(left: 0, right: 20.0),
                          child: Text(
                            widget.inactiveText,
                            style: TextStyle(
                                color: widget.inactiveTextColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
