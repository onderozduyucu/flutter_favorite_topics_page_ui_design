import 'package:flutter/material.dart';
import 'package:flutter_favorite_topics_page_ui_design/custom_widgets.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard(
      {this.favoriteIcon = const IconData(62411, fontFamily: 'MaterialIcons'),
      this.favoriteText = 'Sports',
      Key? key})
      : super(key: key);

  final String favoriteText;

  final IconData? favoriteIcon;

  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;

    return CFlex(
      direction: Axis.horizontal,
      spacing: 20,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CFlexSizedBox(
          height: double.infinity,
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xfff3f4f6),
                borderRadius: BorderRadius.circular(12)),
            child: CFlex(
              direction: Axis.vertical,
              spacing: 0,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CFlexSizedBox(
                  width: null,
                  height: null,
                  child: CFlex(
                    direction: Axis.horizontal,
                    spacing: 15,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CFlexSizedBox(
                        width: null,
                        height: null,
                        child: Icon(
                          favoriteIcon,
                          color: const Color(0xbe34b31d),
                          size: sHeight * 0.05,
                        ),
                      ),
                      CFlexSizedBox(
                        width: null,
                        height: null,
                        child: Text(
                          favoriteText,
                          style: const TextStyle(
                            color: Color(0xff666c8e),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
