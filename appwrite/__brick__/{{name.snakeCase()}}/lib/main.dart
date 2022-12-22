import 'dart:math';
import 'dart:async';

Future<void> start(final req, final res) async {
  final payload = !req.payload?.isEmpty
      ? req.payload
      : 'No payload provided. Add custom data when executing function.';

  final secretKey = req.variables['SECRET_KEY'] ??
      'SECRET_KEY variable not found. You can set it in Function settings.';

  final randomNumber = new Random().nextDouble();

  final trigger = req.variables['APPWRITE_FUNCTION_TRIGGER'];

  res.json({
    'message': 'Hello from {{name.snakeCase()}} appwrite function!',
    'payload': payload,
    'secretKey': secretKey,
    'randomNumber': randomNumber,
    'trigger': trigger,
  });
}
