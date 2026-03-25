import 'package:flutter/material.dart';
import 'package:moviedb_app/design/colors.dart';
import 'package:moviedb_app/design/dimentions.dart';

class MovieDetailsInfo extends StatelessWidget {
  const MovieDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: textBasicColor,
      child: Column(
        children: [
          _topPosterMovie(),
          _nameAndYearMovie(),
          _movieRating(),
          _summury(),
          _quote(),
          _reviewHeader(),
          _description(),
          _team(),
          _team(),
        ],
      ),
    );
  }
}

class _team extends StatelessWidget {
  const _team({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: padding20,
        right: padding20,
        bottom: padding20,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Кевин Уильямсон',
                  style: TextStyle(
                    color: textAppbarColor,
                    fontSize: fontSize16,
                    fontFamily: "SourceSansPro",
                    fontWeight: FontWeight(600),
                  ),
                ),
                Text(
                  'Characters, Director, Screenplay',
                  style: TextStyle(
                    color: textAppbarColor,
                    fontSize: fontSize14,
                    fontFamily: "SourceSansPro",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: width10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Кевин Уильямсон',
                  style: TextStyle(
                    color: textAppbarColor,
                    fontSize: fontSize16,
                    fontFamily: "SourceSansPro",
                    fontWeight: FontWeight(600),
                  ),
                ),
                Text(
                  'Characters, Director, Screenplay',
                  style: TextStyle(
                    color: textAppbarColor,
                    fontSize: fontSize14,
                    fontFamily: "SourceSansPro",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _description extends StatelessWidget {
  const _description({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: padding20,
        right: padding20,
        bottom: padding30,
      ),
      child: Text(
        'Когда в тихом городке, где Сидни Прескотт начала новую жизнь, появляется новый убийца в маске Призрака, её худшие страхи становятся реальностью. Теперь под угрозой оказывается её дочь. Решив защитить семью, Сидни вынуждена вновь столкнуться с ужасами прошлого, чтобы раз и навсегда положить конец кровавой резне.',
        style: TextStyle(
          color: textAppbarColor,
          fontSize: fontSize16,
          fontFamily: "SourceSansPro",
        ),
      ),
    );
  }
}

class _reviewHeader extends StatelessWidget {
  const _reviewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(
          left: padding20,
          right: padding20,
          bottom: padding8,
          top: padding10,
        ),
        child: Text(
          'Обзор',
          style: TextStyle(
            color: textAppbarColor,
            fontSize: fontSize20,
            fontFamily: "SourceSansPro",
            fontWeight: FontWeight(600),
          ),
        ),
      ),
    );
  }
}

class _quote extends StatelessWidget {
  const _quote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(padding20),
        child: Text(
          '\"Сожгите всё дотла\"',
          style: TextStyle(
            color: textHeadGreyColor,
            fontSize: fontSize18,
            fontFamily: "SourceSansPro",
            fontWeight: FontWeight(400),
          ),
        ),
      ),
    );
  }
}

class _summury extends StatelessWidget {
  const _summury({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: textBasicColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: padding10,
          horizontal: 90,
        ),
        child: Text(
          '26/02/2026 (NL) 1h 54m ужасы, детектив, and криминал',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textAppbarColor,
            fontSize: fontSize16,
            fontFamily: "SourceSansPro",
          ),
        ),
      ),
    );
  }
}

class _movieRating extends StatelessWidget {
  const _movieRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: padding20,
        right: padding20,
        bottom: padding16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Рейтинг',
            style: TextStyle(
              color: textAppbarColor,
              fontSize: fontSize16,
              fontWeight: FontWeight(700),
              fontFamily: "SourceSansPro",
            ),
          ),
          SizedBox(width: width16),
          Text(
            'What`s your time Vibe?',
            style: TextStyle(
              color: textAppbarColor,
              fontSize: fontSize16,
              fontWeight: FontWeight(700),
              fontFamily: "SourceSansPro",
            ),
          ),
        ],
      ),
    );
  }
}

class _nameAndYearMovie extends StatelessWidget {
  const _nameAndYearMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: padding20,
        vertical: padding16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Крик 7 ',
            maxLines: 3,
            style: TextStyle(
              color: textAppbarColor,
              fontSize: fontSize24,
              fontFamily: "SourceSansPro",
              fontWeight: FontWeight(700),
            ),
          ),
          Text(
            '(2026)',
            style: TextStyle(
              color: textHeadGreyColor,
              fontSize: fontSize18,
              fontFamily: "SourceSansPro",
              fontWeight: FontWeight(400),
            ),
          ),
        ],
      ),
    );
  }
}

class _topPosterMovie extends StatelessWidget {
  const _topPosterMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height185,
      width: double.infinity,
      child: Stack(
        children: [
          Image(image: AssetImage('assets/images/scream7_big.png')),
          Padding(
            padding: const EdgeInsets.all(padding20),
            child: Image(image: AssetImage('assets/images/scream7.jpg')),
          ),
        ],
      ),
    );
  }
}
