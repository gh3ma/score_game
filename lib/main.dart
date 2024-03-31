import 'package:flutter/material.dart';

void main() {
  runApp(scoreCounter());
}

class scoreCounter extends StatefulWidget {
  @override
  State<scoreCounter> createState() => _scoreCounterState();
}

class _scoreCounterState extends State<scoreCounter> {
  int teamAPoint = 0;
  int teamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 94, 8, 98),
          title: const Text(
            'Score Game',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 250, 235, 252),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Team A column
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 94, 8, 98),
                          fontFamily: 'Nizar'),
                    ),
                    Text(
                      '$teamAPoint',
                      style: const TextStyle(
                          fontSize: 180,
                          color: Color.fromARGB(255, 94, 8, 98),
                          fontFamily: 'Nizar'),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(
                          Colors.white,
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 94, 8, 98),
                        ),
                        textStyle: MaterialStatePropertyAll(
                          TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoint += 1;
                        });
                      },
                      child: Text(
                        'Add 1 point',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(
                          Colors.white,
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 94, 8, 98),
                        ),
                        textStyle: MaterialStatePropertyAll(
                          TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoint += 2;
                        });
                      },
                      child: Text(
                        'Add 2 point',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(
                          Colors.white,
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 94, 8, 98),
                        ),
                        textStyle: MaterialStatePropertyAll(
                          TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoint += 3;
                        });
                      },
                      child: Text(
                        'Add 3 point',
                      ),
                    ),
                  ],
                ),
                // Team B column
                const SizedBox(
                  height: 300,
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Team B',
                      style: const TextStyle(
                          fontSize: 35,
                          color: Color.fromARGB(255, 94, 8, 98),
                          fontFamily: 'Nizar'),
                    ),
                    Text(
                      '$teamBPoint',
                      style: TextStyle(
                          fontSize: 180,
                          color: Color.fromARGB(255, 94, 8, 98),
                          fontFamily: 'Nizar'),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(
                          Colors.white,
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 94, 8, 98),
                        ),
                        textStyle: MaterialStatePropertyAll(
                          TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoint += 1;
                        });
                      },
                      child: const Text(
                        'Add 1 point',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(
                          Colors.white,
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 94, 8, 98),
                        ),
                        textStyle: MaterialStatePropertyAll(
                          TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoint += 2;
                        });
                      },
                      child: const Text(
                        'Add 2 point',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(
                          Colors.white,
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 94, 8, 98),
                        ),
                        textStyle: MaterialStatePropertyAll(
                          TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoint += 3;
                        });
                      },
                      child: const Text(
                        'Add 3 point',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(
                  Colors.white,
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 94, 8, 98),
                ),
                textStyle: MaterialStatePropertyAll(
                  TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  teamAPoint = 0;
                  teamBPoint = 0;
                });
              },
              child: const Text(
                'Reset',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
