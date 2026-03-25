import 'package:flutter/material.dart';
import 'package:moviedb_app/design/dimentions.dart';
import 'package:moviedb_app/design/styles.dart';

class Movie {
  final int id;
  final String imageName;
  final String titleRU;
  final String titleEN;
  final String time;
  final String description;

  Movie({
    required this.id,
    required this.imageName,
    required this.titleRU,
    required this.titleEN,
    required this.time,
    required this.description,
  });
}

class MovieListWidget extends StatefulWidget {
  MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final movies = [
    Movie(
      id: 0,
      imageName: 'assets/images/war_machine.jpg',
      titleRU: 'Военная машина',
      titleEN: 'War Machine',
      time: '6 марта 2026',
      description:
          'Во время последней изнурительной миссии на подготовке рейнджеров боевой инженер должен возглавить подразделение в схватке с гигантской потусторонней машиной-убийцей.',
    ),
    Movie(
      id: 1,
      imageName: 'assets/images/movie_placeholder.jpg',
      titleRU: 'Убежище',
      titleEN: 'Shelter',
      time: '29 января 2026',
      description:
          'Бывший боец спецотряда MI6 Майкл Мейсон живёт отшельником вместе с псом на одном из небольших уединённых островов Шотландии, скрываясь от своего прошлого. Периодически к нему приплывает на лодке его сослуживец с племянницей Джесси и привозит припасы. Однажды во время шторма лодка переворачивается, дядя девочки погибает, но Майкл успевает спасти Джесси, которая получает серьёзную травму ноги. Поняв, что без лекарств ногу не вылечить, Мейсон выбирается в ближайший городок на материке, где его засекают сотрудники MI6. А вскоре на остров, где находятся Майкл и Джесси, высаживается отряд спецназа.',
    ),
    Movie(
      id: 2,
      imageName: 'assets/images/avatar.jpg',
      titleRU: 'Аватар: Пламя и пепел',
      titleEN: 'Avatar: Fire and Ash',
      time: '17 декабря 2025',
      description:
          'Джейк Салли, Нейтири и их дети переживают смерть Нетейама. Противостояние с корпорацией RDA обостряется, и теперь семье предстоит столкнуться с враждебным племенем На`ви во главе с Варанг.',
    ),
    Movie(
      id: 3,
      imageName: 'assets/images/scream7.jpg',
      titleRU: 'Крик 7',
      titleEN: 'Scream 7',
      time: '26 февраля 2026',
      description:
          'Когда в тихом городке, где Сидни Прескотт начала новую жизнь, появляется новый убийца в маске Призрака, её худшие страхи становятся реальностью. Теперь под угрозой оказывается её дочь. Решив защитить семью, Сидни вынуждена вновь столкнуться с ужасами прошлого, чтобы раз и навсегда положить конец кровавой резне.',
    ),
  ];

  var _filtredMovies = <Movie>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filtredMovies = movies.where((Movie movie) {
        return movie.titleRU.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filtredMovies = movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _filtredMovies = movies;
    _searchController.addListener(_searchMovies);
  }

  void _movieDetails(int index) {
    final id = movies[index].id;
    final navigator = Navigator.of(context);
    navigator.pushNamed('/main_screen/movie_details', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.separated(
          padding: const EdgeInsets.only(
            left: padding20,
            right: padding20,
            bottom: padding20,
            top: padding70,
          ),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filtredMovies.length,
          separatorBuilder: (BuildContext context, index) {
            return SizedBox(height: height8);
          },
          itemBuilder: (BuildContext context, index) {
            final movie = _filtredMovies[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius8),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => _movieDetails(index),
                  child: SizedBox(
                    height: height141,
                    child: Row(
                      children: [
                        Ink.image(
                          image: AssetImage(movie.imageName),
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
                                            text: movie.titleRU,
                                            style: textHeadCardMovieStyle,
                                          ),
                                          WidgetSpan(
                                            child: SizedBox(width: width4),
                                          ),
                                          TextSpan(
                                            text: '(${movie.titleEN})',
                                            style: textHeadENCardMovieStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      movie.time,
                                      style: textDateCardStyle,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                Text(
                                  movie.description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: textDescriptionCardStyle,
                                ),
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
        Padding(
          padding: const EdgeInsets.all(padding14),
          child: TextField(
            controller: _searchController,
            decoration: textFieldSearchDecoration,
          ),
        ),
      ],
    );
  }
}
