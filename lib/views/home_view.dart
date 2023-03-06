import 'package:flutter/material.dart';
import 'package:flutter_appl_weather/views/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height * 1,
        width: size.width * 1,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/weather.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.location_on,
                size: 50,
                color: Colors.white,
              ),
            ),
            Positioned(
              right: 0,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchWiew(),
                    ),
                  );
                },
                child: const Icon(
                  Icons.location_city,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            const Positioned(
              top: 130,
              left: 30,
              child: Text(
                '8 \u2103',
                style: TextStyle(
                  fontSize: 120,
                  color: Colors.white,
                ),
              ),
            ),
            const Positioned(
              top: 50,
              left: 250,
              child: Text(
                '🌦️',
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 350,
              child: Row(
                children: const [
                  Text(
                    '''Вам 
    понадабиться
      перчатки и
        шарфик''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '''🧣
🧤''',
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 670,
              left: 100,
              child: Text(
                '''Bishkek''',
                style: TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
