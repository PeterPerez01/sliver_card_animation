import 'package:flutter/material.dart';
import 'package:sliver_card_animation/sources/theme.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 10),
        color: backgroundcolor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _CustomIcon(
                  icon: Icons.stars,
                  text: '94%',
                ),
                _CustomIcon(
                  icon: Icons.tv,
                  text: 'Star+',
                ),
                _CustomIcon(
                  icon: Icons.family_restroom_rounded,
                  text: 'TV +14',
                ),
                _CustomIcon(
                  icon: Icons.av_timer_rounded,
                  text: '22m',
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                '''Una serie de comedia de media hora sobre Ted y cómo se enamoró. Todo comenzó cuando el mejor amigo de Ted, Marshall, deja caer la bomba de que le propondrá matrimonio a su novia de mucho tiempo, Lily, una maestra de jardín de infantes. En ese momento, Ted se da cuenta de que es mejor que se apure si espera encontrar el amor verdadero también.
                      ''',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 15),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 10),
              child: Text(
                'Títulos similares',
                style: TextStyle(fontSize: 23),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      8,
                      (index) => Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                height: size.height * 0.18,
                                width: size.width * 0.23,
                                image: AssetImage(
                                    'assets/related00${index + 1}.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ))),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Temporadas',
                style: TextStyle(fontSize: 23),
              ),
            ),
            _Features(
              size: size,
              title: 'Temporada 1',
              subtitle: '22 Episodios',
              colorline: Colors.blue[300]!,
            ),
            _Features(
              size: size,
              title: 'Temporada 2',
              subtitle: '22 Episodios',
              colorline: Colors.blue[300]!,
            ),
            _Features(
              size: size,
              title: 'Temporada 3',
              subtitle: '20 Episodios',
              colorline: Colors.grey[300]!,
            ),
            _Features(
              size: size,
              title: 'Temporada 4',
              subtitle: '24 Episodios',
              colorline: Colors.grey[300]!,
            ),
            _Features(
              size: size,
              title: 'Temporada 5',
              subtitle: '24 Episodios',
              colorline: Colors.grey[300]!,
            ),
            _Features(
              size: size,
              title: 'Temporada 6',
              subtitle: '24 Episodios',
              colorline: Colors.grey[300]!,
            ),
            _Features(
              size: size,
              title: 'Temporada 7',
              subtitle: '24 Episodios',
              colorline: Colors.grey[300]!,
            ),
            _Features(
              size: size,
              title: 'Temporada 8',
              subtitle: '24 Episodios',
              colorline: Colors.grey[300]!,
            ),
            _Features(
              size: size,
              title: 'Temporada 9',
              subtitle: '24 Episodios',
              colorline: Colors.grey[300]!,
            ),
          ],
        ));
  }
}

class _CustomIcon extends StatelessWidget {
  const _CustomIcon({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 45,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.blueAccent),
        )
      ],
    );
  }
}

class _Features extends StatelessWidget {
  const _Features({
    Key? key,
    required this.size,
    required this.title,
    required this.subtitle,
    required this.colorline,
  }) : super(key: key);

  final Size size;
  final String title;
  final String subtitle;
  final Color colorline;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: size.width,
      color: backgroundcolor,
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    height: 5,
                    color: colorline,
                  ),
                )
              ],
            ),
          ),
          Icon(
            Icons.download_rounded,
            color: Colors.grey[400],
          )
        ],
      ),
    );
  }
}
