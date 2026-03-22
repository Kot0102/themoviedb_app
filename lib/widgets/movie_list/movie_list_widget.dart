import 'dart:math';

import 'package:flutter/material.dart';
import 'package:moviedb_app/design/colors.dart';
import 'package:moviedb_app/design/dimentions.dart';
import 'package:moviedb_app/design/styles.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding20),
      child: Container(
        child: ListView.separated(
          itemCount: 20,
          separatorBuilder: (BuildContext context, index) {
            return SizedBox(height: height8);
          },
          itemBuilder: (BuildContext context, index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius8),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    print('Tap');
                  },
                  child: SizedBox(
                    height: height141,
                    child: Row(
                      children: [
                        Ink.image(
                          image: const AssetImage(
                            'assets/images/movie_placeholder.jpg',
                          ),
                          width: width94,
                          height: height141,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(padding14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text.rich(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Убежище',
                                            style: textHeadCardMovieStyle,
                                          ),
                                          WidgetSpan(
                                            child: SizedBox(width: width4),
                                          ),
                                          TextSpan(
                                            text: '(Shelter)',
                                            style: textHeadENCardMovieStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                    _movieDate(),
                                  ],
                                ),
                                _movieDescription(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Text _movieDescription() {
    return Text(
      'Бывший боец спецотряда MI6 Майкл Мейсон живёт отшельником вместе с псом на одном из небольших уединённых островов Шотландии, скрываясь от своего прошлого. Периодически к нему приплывает на лодке его сослуживец с племянницей Джесси и привозит припасы. Однажды во время шторма лодка переворачивается, дядя девочки погибает, но Майкл успевает спасти Джесси, которая получает серьёзную травму ноги. Поняв, что без лекарств ногу не вылечить, Мейсон выбирается в ближайший городок на материке, где его засекают сотрудники MI6. А вскоре на остров, где находятся Майкл и Джесси, высаживается отряд спецназа.',
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: textDescriptionCardStyle,
    );
  }

  Text _movieDate() {
    return Text(
      '29 января 2026',
      style: textDateCardStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
