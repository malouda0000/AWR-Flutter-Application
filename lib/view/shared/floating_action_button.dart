import 'package:awr_flutter_application/core/constants/app_images_svg.dart';
import 'package:awr_flutter_application/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

class CustomFloatingAcctionButton extends StatelessWidget {
  const CustomFloatingAcctionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: math.pi / 4,
      child: FloatingActionButton(
        heroTag: null,
        onPressed: () {
          // null;
        },
        // onPressed: () {
        //   // navigateTo(context, CartScreen());
        //   // context.read<HomeBloc>().bottomNavBarTapded(newPageNumber: 3);
        //   context.read<BottomNavBloc>().add(BottomNavBarTapdedEvent(
        //         // 3 to change the main active page into the new page, and page 3 is the FAB page, or let's say it's cart page
        //         tappdedPageNumber: 3,
        //       ));

        //   context.read<DrawerBloc>().activeDrawerPage = 6;
        // },
        backgroundColor: AppColors.mainColor,
        child: Transform.rotate(
            angle: -(math.pi / 4),
            // child: SvgPicture.asset(
            //   color: Colors.white,
            //   width: 30,
            //   height: 30,
            //   AppImagesSvg.mycartSvg,
            // ), 
            child:const Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 30,)
            ),
      ),
    );
  }
}
