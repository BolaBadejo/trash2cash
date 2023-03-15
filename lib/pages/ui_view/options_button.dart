import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../theme.dart';

class OptionsButton extends StatelessWidget {
  final String titleTxt;
  final IconData icon;
  final AnimationController? animationController;
  final Animation<double>? animation;

  const OptionsButton(
      {Key? key,
      this.animationController,
      this.animation,
      required this.titleTxt,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 30 * (1.0 - animation!.value), 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 0, bottom: 24),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: HexColor("#D7E0F9"),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                                topRight: Radius.circular(20.0)),
                            // boxShadow: <BoxShadow>[
                            //   BoxShadow(
                            //       color: Trash2CashTheme.grey.withOpacity(0.2),
                            //       offset: const Offset(0.5, 0.5),
                            //       blurRadius: 10.0),
                            // ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 16, bottom: 12, right: 16, top: 12),
                                child: Icon(
                                  icon,
                                  color: Trash2CashTheme.grey.withOpacity(0.6),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, bottom: 12, right: 16, top: 12),
                                child: Text(
                                  titleTxt,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontFamily: Trash2CashTheme.fontName,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    letterSpacing: 0.0,
                                    color: Trash2CashTheme.nearlyDarkBlue,
                                  ),
                                ),
                              ),
                              const Expanded(child: SizedBox()),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 16, bottom: 12, right: 16, top: 12),
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Trash2CashTheme.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
