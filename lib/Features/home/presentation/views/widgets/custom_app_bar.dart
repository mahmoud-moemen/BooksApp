
import 'package:books_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 20),
      child: Row(
        children:
        [
          const Image(image:AssetImage(AssetsData.logo),height:25,width: 80, ),
          const Spacer(),
          IconButton(icon: const FaIcon(FontAwesomeIcons.magnifyingGlass,size: 23) , onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          }),
        ],
      ),
    );
  }
}