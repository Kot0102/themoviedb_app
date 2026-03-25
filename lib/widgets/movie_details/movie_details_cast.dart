import 'package:flutter/material.dart';
import 'package:moviedb_app/design/colors.dart';
import 'package:moviedb_app/design/dimentions.dart';

class MovieDetailsCast extends StatelessWidget {
  const MovieDetailsCast({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: textAppbarColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: padding20,
          vertical: padding20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _castHeader(),
            SizedBox(
              height: height260,
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: 20,
                  itemExtent: 122,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(radius8),
                      ),
                      color: textAppbarColor,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Ink.image(
                                image: AssetImage(
                                  'assets/images/cast_itrm.png',
                                ),
                                width: width122,
                                height: height135,
                                fit: BoxFit.cover,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(padding10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Нив Кэмпбелл',
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: textBasicColor,
                                          fontSize: fontSize16,
                                          fontFamily: "SourceSansPro",
                                          fontWeight: FontWeight(700),
                                        ),
                                      ),
                                      Text(
                                        'Sidney Evans',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: textBasicColor,
                                          fontSize: fontSize16,
                                          fontFamily: "SourceSansPro",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: height8),
            _castFullBtn(),
          ],
        ),
      ),
    );
  }
}

class _castFullBtn extends StatelessWidget {
  const _castFullBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        'Полный актёрский и съёмочный состав',
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: textBasicColor,
          decorationThickness: 2,
          color: textBasicColor,
          fontSize: fontSize18,
          fontFamily: "SourceSansPro",
        ),
      ),
    );
  }
}

class _castHeader extends StatelessWidget {
  const _castHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'В главных ролях',
      style: TextStyle(
        color: textBasicColor,
        fontSize: fontSize20,
        fontFamily: "SourceSansPro",
        fontWeight: FontWeight(600),
      ),
    );
  }
}
