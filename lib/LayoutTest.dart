import 'package:flutter/material.dart';

class LayoutTestOne extends StatelessWidget {
  const LayoutTestOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleSection = Container(
      padding: const EdgeInsets.all(26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: const Text('Oeschinen Lake Campground.')),
                const Text('Iron Sight of Multiple, Germany East.')
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Color.fromARGB(200, 234, 143, 6),
          ),
          const Text('41')
        ],
      ),
    );

    final buttonSection = Container(
      padding: const EdgeInsets.only(left: 26, right: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 60,
            child: Column(
              children: const [
                Icon(Icons.call, color: Colors.blue),
                SizedBox(height: 7),
                Text("Call", style: TextStyle(color: Colors.blue))
              ],
            ),
          ),
          SizedBox(
            width: 60,
            child: Column(
              children: [
                const Icon(Icons.share, color: Colors.blue),
                Container(
                    margin: const EdgeInsets.only(top: 7),
                    child: const Text(
                      "Share",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w400,
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            width: 60,
            child: Column(
              children: const [
                Icon(Icons.navigation_rounded, color: Colors.blue),
                SizedBox(height: 7),
                Text(
                  "Navigate",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
        ],
      ),
    );

    const textSection = Padding(
      padding: EdgeInsets.all(26),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        // softWrap: true,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          height: 1.8,
        ),
        textAlign: TextAlign.justify,
      ),
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/images/image.jpg',
            fit: BoxFit.cover,
            width: 500,
            height: 400,
          ),
          titleSection,
          const SizedBox(height: 6),
          buttonSection,
          textSection
        ],
      ),
    );
  }
}
