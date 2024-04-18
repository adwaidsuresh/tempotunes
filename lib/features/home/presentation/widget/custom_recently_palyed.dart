import 'package:flutter/material.dart';
import 'package:musicplayer/core/theme/theme_helper.dart';

class RecentlyPlayedWidget extends StatelessWidget {
  const RecentlyPlayedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;
    final spaces = AppTheme.of(context).spaces;
    return SizedBox(
      height: spaces.space_900 * 3.5,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: spaces.space_100,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 150,
                decoration: BoxDecoration(
                  // color: colors.backgroundLight,
                  borderRadius: BorderRadius.circular(spaces.space_25),
                ),
                child: Image.asset(
                  'assets/images/eye.png',
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Antretor',
                style: TextStyle(color: colors.backgroundLight),
              ),
              Text(
                'yarn horison',
                style: TextStyle(color: colors.behindImage),
              )
            ],
          );
        },
      ),
    );
  }
}


    // child: Row(
      //   children: List.generate(10, (index) {
      //     return Container(
      //       height: spaces.space_900 * 2.3,
      //       width: spaces.space_900 * 2.5,
      //       decoration: BoxDecoration(
      //         image: const DecorationImage(
      //           image: AssetImage(
      //             'assets/images/eye.png',
      //           ),
      //           fit: BoxFit.cover, // Fit the image inside the container
      //         ),
      //           borderRadius: BorderRadius.circular(spaces.space_100),
      //       ),
      //       margin: EdgeInsets.symmetric(horizontal: spaces.space_25),
      //     );
      //   }),
      // ),