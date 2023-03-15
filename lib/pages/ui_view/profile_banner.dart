import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../theme.dart';

class ProfileBanner extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const ProfileBanner({Key? key, this.animationController, this.animation})
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
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 16, bottom: 18),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Trash2CashTheme.nearlyDarkBlue,
                    HexColor("#6F56E8")
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(68.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Trash2CashTheme.grey.withOpacity(0.6),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Trash2CashTheme.nearlyWhite,
                            shape: BoxShape.circle,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Trash2CashTheme.nearlyBlack
                                      .withOpacity(0.4),
                                  offset: const Offset(8.0, 8.0),
                                  blurRadius: 8.0),
                            ],
                            image: const DecorationImage(
                              image: AssetImage("assets/images/image.png"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Badejo Bolarinwa',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: Trash2CashTheme.fontName,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                      letterSpacing: -0.2,
                                      color: Trash2CashTheme.nearlyWhite,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 1),
                                    child: Text(
                                      '@bola_badejo',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Trash2CashTheme.fontName,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Trash2CashTheme.white
                                            .withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 1),
                                    child: Text(
                                      'bolarinwabadejo@gmail.com',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Trash2CashTheme.fontName,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Trash2CashTheme.white
                                            .withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                      'Wallet id: 02735284950',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Trash2CashTheme.fontName,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Trash2CashTheme.nearlyWhite,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 1),
                                    child: Text(
                                      'ref: 7368dyhwc89aisw1wxv',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Trash2CashTheme.fontName,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: Trash2CashTheme.nearlyWhite,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
