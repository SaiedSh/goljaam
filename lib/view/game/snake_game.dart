import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:goljaam_education/model/global/global.dart';
import 'package:google_fonts/google_fonts.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  static const int _rowCount = 20;
  static const int _colCount = 20;
  static const int _initialSnakeLength = 5;
  static const Duration _updateInterval = Duration(milliseconds: 300);

  List<Offset>? _snakePositions;
  Offset? _foodPosition;
  String? _direction = 'up';
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startGame();
  }

  void _startGame() {
    _snakePositions =
        List<Offset>.generate(_initialSnakeLength, (index) => Offset(10, 10));
    _generateFood();
    _direction = 'up';
    _timer = Timer.periodic(_updateInterval, _updateGame);
  }

  void _generateFood() {
    Random random = Random();
    _foodPosition = Offset(
      random.nextInt(_colCount).toDouble(),
      random.nextInt(_rowCount).toDouble(),
    );
  }

  void _updateGame(Timer timer) {
    setState(() {
      _moveSnake();
      _checkCollision();
    });
  }

  void _moveSnake() {
    Offset newHead;
    switch (_direction) {
      case 'up':
        newHead = _snakePositions!.first + Offset(0, -1);
        break;
      case 'down':
        newHead = _snakePositions!.first + Offset(0, 1);
        break;
      case 'left':
        newHead = _snakePositions!.first + Offset(-1, 0);
        break;
      case 'right':
        newHead = _snakePositions!.first + Offset(1, 0);
        break;
      default:
        newHead = _snakePositions!.first;
    }
    _snakePositions!.insert(0, newHead);

    if (newHead == _foodPosition) {
      _generateFood();
    } else {
      _snakePositions!.removeLast();
    }
  }

  void _checkCollision() {
    if (_snakePositions!.first.dx < 0 ||
        _snakePositions!.first.dx >= _colCount ||
        _snakePositions!.first.dy < 0 ||
        _snakePositions!.first.dy >= _rowCount ||
        _snakePositions!.skip(1).contains(_snakePositions!.first)) {
      _timer!.cancel();
      _showGameOverDialog();
    }
  }

  void _showGameOverDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Game Over'),
        content: Text('Your score: ${_snakePositions!.length}'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _startGame();
            },
            child: Text('Restart'),
          ),
        ],
      ),
    );
  }

  void _changeDirection(String newDirection) {
    setState(() {
      switch (newDirection) {
        case 'up':
          if (_direction != 'down') _direction = 'up';
          break;
        case 'down':
          if (_direction != 'up') _direction = 'down';
          break;
        case 'left':
          if (_direction != 'right') _direction = 'left';
          break;
        case 'right':
          if (_direction != 'left') _direction = 'right';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Snake Game',
          style: GoogleFonts.dosis(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 30,
              height: 330,
              child: GridView.builder(
                itemCount: _rowCount * _colCount,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1,
                  crossAxisCount: _colCount,
                ),
                itemBuilder: (context, index) {
                  final x = index % _colCount;
                  final y = index ~/ _colCount;
                  final offset = Offset(x.toDouble(), y.toDouble());
                  final isSnake = _snakePositions!.contains(offset);
                  final isFood = _foodPosition == offset;
                  return Container(
                    decoration: BoxDecoration(
                        color: isSnake
                            ? Colors.amber
                            : isFood
                                ? Colors.red
                                : Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5)
                        ]),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                          icon: Icon(Icons.arrow_upward),
                          onPressed: () => _changeDirection('up'),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(12)),
                            child: IconButton(
                              icon: Icon(Icons.arrow_back),
                              onPressed: () => _changeDirection('left'),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(12)),
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward),
                              onPressed: () => _changeDirection('right'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                          icon: Icon(Icons.arrow_downward),
                          onPressed: () => _changeDirection('down'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          _startGame();
                        },
                        child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                                child: Text(
                              'Restart',
                              style: GoogleFonts.dosis(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
