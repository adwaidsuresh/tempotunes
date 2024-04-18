import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musicplayer/core/theme/theme_helper.dart';
import 'package:musicplayer/features/home/data/repositery/main_repo.dart';

class PlayList extends ConsumerWidget {
  const PlayList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = AppTheme.of(context).colors;
    final spaces = AppTheme.of(context).spaces;
    final api = ref.watch(getmusicProvider);
    return SafeArea(
      child: Scaffold(
          backgroundColor: colors.txtSubtle,
          body: api.when(
            data: (data) {
              if (data == null) {
                return const Center(
                  child: Text('null'),
                );
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackButton(
                        color: colors.backgroundLight,
                      ),
                      Text(
                        'Back to her man',
                        style: TextStyle(
                            color: colors.backgroundLight,
                            fontSize: spaces.space_200,
                            fontWeight: FontWeight.w800),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                            color: colors.backgroundLight,
                          ))
                    ],
                  ),
                  Center(
                    child: Container(
                      width: spaces.space_900 * 4,
                      height: spaces.space_900 * 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(spaces.space_200),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/eye.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: spaces.space_300,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: spaces.space_300),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Back to Her man',
                          style: TextStyle(
                              color: colors.backgroundLight,
                              fontSize: spaces.space_200,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Text(
                              'Demien  Rice',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(74, 158, 158, 158),
                                  fontSize: spaces.space_150 * 1.2,
                                  fontWeight: FontWeight.w400),
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
                        SizedBox(
                          height: spaces.space_900 * 2.5,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: spaces.space_800,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.shuffle,
                                  color: Color(0xffBAA8ED),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.backward_end_fill,
                                  color: Color(0xffBAA8ED),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.pause_circle_fill,
                                  size: spaces.space_700,
                                  color: const Color(0xffBAA8ED),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.forward_end_fill,
                                  color: Color(0xffBAA8ED),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.arrow_2_circlepath,
                                  color: Color(0xffBAA8ED),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
            error: (error, stackTrace) => const Center(
              child: CircleAvatar(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          )),
    );
  }
}
