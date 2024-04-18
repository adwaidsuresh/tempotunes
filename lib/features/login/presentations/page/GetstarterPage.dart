import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/core/theme/theme_helper.dart';
import 'package:musicplayer/features/home/presentation/page/home_page.dart';

class GetstarterPage extends StatelessWidget {
  const GetstarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;
    final spaces = AppTheme.of(context).spaces;
    // final typography = AppTheme.of(context).typography;
    // final boxShadow = AppTheme.of(context).boxShadow;
    return Scaffold(
      backgroundColor: colors.txtSubtle,
      body: Stack(
        children: [
          Image.asset('assets/images/head.png'),
          Positioned(
            bottom: spaces.space_900 * 1.5,
            left: spaces.space_900 * 1.3,
            child: Text(
              'Getting started',
              style: TextStyle(
                  fontSize: spaces.space_400,
                  color: colors.backgroundLight,
                  fontFamily: 'FONT1'),
            ),
          ),
          Positioned(
            bottom: spaces.space_800,
            left: spaces.space_900 * 1.72,
            child: Text(
              'Getting started Getting ',
              style: TextStyle(
                fontSize: spaces.space_200,
                color: colors.backgroundLight,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: spaces.space_900 * 1.85,
            child: Container(
              decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: spaces.space_900,
                  //     spreadRadius: spaces.space_800,
                  //     offset: Offset(spaces.space_600, spaces.space_150),
                  //     color: const Color(0xffC03EFE),
                  //   ),
                  // ],
                  ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: colors.btnPrimary),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePaage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      'Let\'s Go',
                      style: TextStyle(
                        color: colors.backgroundLight,
                        fontSize: spaces.space_250,
                        fontFamily: 'FONT1',
                      ),
                    ),
                    Icon(
                      CupertinoIcons.right_chevron,
                      color: colors.backgroundLight,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
