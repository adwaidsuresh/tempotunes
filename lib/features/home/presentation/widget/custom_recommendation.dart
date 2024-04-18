import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/core/theme/theme_helper.dart';
import 'package:musicplayer/features/playlist/presentation/page/playlist_page.dart';

class RecommendationWidget extends StatelessWidget {
  const RecommendationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;
    final spaces = AppTheme.of(context).spaces;

    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: spaces.space_100,
      ),
      shrinkWrap: true,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlayList(),
            ),
          );
        },
        child: Row(
          children: [
            Container(
              width: spaces.space_600,
              height: spaces.space_700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(spaces.space_100),
                image: const DecorationImage(
                    image: AssetImage('assets/images/eye.png'),
                    fit: BoxFit.cover),
                // color: colors.backgroundLight,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: spaces.space_200, left: spaces.space_100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Back to Her Men',
                    style: TextStyle(
                        color: colors.backgroundLight,
                        fontSize: spaces.space_150,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Demen  Rice',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: spaces.space_150,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.heart,
                  color: colors.backgroundLight,
                ))
          ],
        ),
      ),
      itemCount: 10,
    );
  }
}
