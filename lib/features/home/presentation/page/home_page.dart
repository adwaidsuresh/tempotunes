import 'package:flutter/material.dart';
import 'package:musicplayer/core/theme/theme_helper.dart';
import 'package:musicplayer/core/widgets/custom_textfield_widgets.dart';
import 'package:musicplayer/features/home/presentation/widget/custom_recently_palyed.dart';
import 'package:musicplayer/features/home/presentation/widget/custom_recommendation.dart';

class HomePaage extends StatelessWidget {
  const HomePaage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;
    final spaces = AppTheme.of(context).spaces;

    return Scaffold(
      backgroundColor: colors.txtSubtle,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(spaces.space_250),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextField(
                    hintText: 'search song',
                    prefixIcon: Icon(Icons.search),
                  ),
                  SizedBox(
                    height: spaces.space_100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'RECENTLY PLAYED',
                        style: TextStyle(
                            color: colors.backgroundLight,
                            fontSize: spaces.space_200,
                            fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        'See all',
                        style: TextStyle(color: Colors.grey),
                      ),
                      // Uncomment to include the RecentlyPlayedWidget
                    ],
                  ),
                  SizedBox(
                    height: spaces.space_25,
                  ),
                  const RecentlyPlayedWidget(),
                  SizedBox(
                    height: spaces.space_400,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'RECOMMENDATION',
                        style: TextStyle(
                            color: colors.backgroundLight,
                            fontSize: spaces.space_200,
                            fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        'See All',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const RecommendationWidget(),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: spaces.space_800,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    colors.txtSubtle.withOpacity(0.8),
                    colors.txtSubtle.withOpacity(0),
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
