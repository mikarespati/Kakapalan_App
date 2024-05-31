import 'package:airplane_travel/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget bottomNavigation(){
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              right: defaultMargin,
              left: defaultMargin,
              bottom: 30
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonNavigatinItem(
                imageUrl: 'assets/icons/icon_home.png',
                isSelected: true,
              ),
              CustomButtonNavigatinItem(
                imageUrl: 'assets/icons/icon_transaction.png',
                isSelected: false,
              ),
              CustomButtonNavigatinItem(
                imageUrl: 'assets/icons/icon_card.png',
                isSelected: false,
              ),
              CustomButtonNavigatinItem(
                imageUrl: 'assets/icons/icon_settings.png',
                isSelected: false,
              ),

            ],
          ),
        ),
      );
    }



    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Text(
            'Halaman Main Page',
          ),
          bottomNavigation(),

        ],
      ),
    );
  }
}
