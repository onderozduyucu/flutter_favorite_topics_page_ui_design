import 'package:flutter/material.dart';

import 'package:flutter_favorite_topics_page_ui_design/custom_widgets.dart';
import 'package:flutter_favorite_topics_page_ui_design/favorite_group_card.dart';

class FavoriteTopics extends StatefulWidget {
  const FavoriteTopics({Key? key}) : super(key: key);

  @override
  State<FavoriteTopics> createState() {
    return _FavoriteTopicsState();
  }
}

class _FavoriteTopicsState extends State<FavoriteTopics> {
  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: sHeight * 0.02,
            horizontal: sWidth * 0.05,
          ),
          child: CFlex(
            direction: Axis.vertical,
            spacing: 0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: double.infinity,
                flex: 1,
                child: CFlex(
                  direction: Axis.vertical,
                  spacing: 25,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CFlexSizedBox(
                      width: double.infinity,
                      child: CFlex(
                        direction: Axis.vertical,
                        spacing: 10,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CFlexSizedBox(
                            width: double.infinity,
                            child: Text(
                              'Select your favorite topics',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600),
                            ),
                          ),
                          CFlexSizedBox(
                            width: double.infinity,
                            child: Text(
                              'Select some of your favorite topics to let us suggest better news for you.',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff7c82a1),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const CFlexSizedBox(
                      width: double.infinity,
                      height: null,
                      child: FavoriteGroupCard(),
                    ),
                    buildNextButton(sWidth, sHeight)
                  ],
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(
            '',
            style: TextStyle(),
          ),
        ),
      ),
    );
  }

  CFlexSizedBox buildNextButton(double sWidth, double sHeight) {
    return CFlexSizedBox(
      width: double.infinity,
      flex: 1,
      child: CFlex(
        direction: Axis.horizontal,
        spacing: 0,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CFlexSizedBox(
            width: sWidth * 0.74,
            height: sHeight * 0.06,
            child: CButton(
              onPressed: () {},
              color: const Color(0xff475ad7),
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
