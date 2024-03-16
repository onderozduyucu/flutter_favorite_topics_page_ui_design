import 'package:flutter/material.dart';
import 'package:flutter_favorite_topics_page_ui_design/custom_widgets.dart';
import 'package:flutter_favorite_topics_page_ui_design/favorite_card.dart';

class FavoriteGroupCard extends StatelessWidget {
  const FavoriteGroupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return CFlex(
      direction: Axis.vertical,
      spacing: 20,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CFlexSizedBox(
          width: double.infinity,
          child: CFlex(
            direction: Axis.horizontal,
            spacing: 20,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: sWidth * 0.40,
                height: 72,
                child: const FavoriteCard(),
              ),
              CFlexSizedBox(
                width: sWidth * 0.40,
                height: 72,
                child: const FavoriteCard(
                  favoriteText: 'Politics',
                  favoriteIcon: IconData(63244, fontFamily: 'MaterialIcons'),
                ),
              )
            ],
          ),
        ),
        CFlexSizedBox(
          width: double.infinity,
          child: CFlex(
            direction: Axis.horizontal,
            spacing: 20,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: sWidth * 0.40,
                height: 72,
                child: const FavoriteCard(
                  favoriteText: 'Life',
                  favoriteIcon: IconData(58504, fontFamily: 'MaterialIcons'),
                ),
              ),
              CFlexSizedBox(
                width: sWidth * 0.40,
                height: 72,
                child: const FavoriteCard(
                  favoriteText: 'Gaming',
                  favoriteIcon: IconData(60637, fontFamily: 'MaterialIcons'),
                ),
              )
            ],
          ),
        ),
        CFlexSizedBox(
          width: double.infinity,
          child: CFlex(
            direction: Axis.horizontal,
            spacing: 20,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: sWidth * 0.40,
                height: sHeight * 0.08,
                child: const FavoriteCard(
                  favoriteText: 'Animals',
                  favoriteIcon: IconData(983993, fontFamily: 'MaterialIcons'),
                ),
              ),
              CFlexSizedBox(
                width: sWidth * 0.40,
                height: sHeight * 0.08,
                child: const FavoriteCard(
                  favoriteText: 'Nature',
                  favoriteIcon: IconData(61953, fontFamily: 'MaterialIcons'),
                ),
              )
            ],
          ),
        ),
        CFlexSizedBox(
          width: double.infinity,
          child: CFlex(
            direction: Axis.horizontal,
            spacing: 20,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: sWidth * 0.40,
                height: sHeight * 0.08,
                child: const FavoriteCard(
                  favoriteText: 'Food',
                  favoriteIcon: IconData(59735, fontFamily: 'MaterialIcons'),
                ),
              ),
              CFlexSizedBox(
                width: sWidth * 0.40,
                height: sHeight * 0.08,
                child: const FavoriteCard(
                  favoriteText: 'Art',
                  favoriteIcon: IconData(61187, fontFamily: 'MaterialIcons'),
                ),
              )
            ],
          ),
        ),
        CFlexSizedBox(
          width: double.infinity,
          child: CFlex(
            direction: Axis.horizontal,
            spacing: 20,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: sWidth * 0.40,
                height: sHeight * 0.08,
                child: const FavoriteCard(
                  favoriteText: 'History',
                  favoriteIcon: IconData(58134, fontFamily: 'MaterialIcons'),
                ),
              ),
              CFlexSizedBox(
                width: sWidth * 0.40,
                height: sHeight * 0.08,
                child: const FavoriteCard(
                  favoriteText: 'Fashion',
                  favoriteIcon: IconData(59726, fontFamily: 'MaterialIcons'),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
