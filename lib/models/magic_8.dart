import 'dart:math';

class Magic8 {

  final String initialResponse;
  final Random random = Random();
  final List<String> responses = [
    'It is certain.',
    'It is decidedly so.',
    'Without a doubt.',
    'Yes, definitely.',
    'You may rely on it.',
    'As I see it, yes.',
    'Most likely.',
    'Outlook good.',
    'Yes.',
    'Signs point to yes.',
    'Reply hazy, try again.',
    'Ask again later.',
    'Better not tell you now.',
    'Cannot predict now.',
    'Concentrate and ask again.',
    'Don\'t count on it.',
    'My reply is no.',
    'My sources say no.',
    'Outlook not so good.',
    'Very doubtful.'
  ];

  String _currentResponse = 'Yes.';

  Magic8({this.initialResponse = 'Yes.'});

  String get currentResponse => _currentResponse;

  void roll() {
    _currentResponse = responses[random.nextInt(responses.length)];
  }

}