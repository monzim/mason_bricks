import 'package:mason/mason.dart';

void run(HookContext context) async {
  // final time = Stopwatch()..start();

  // final progress = context.logger.progress(
  //   'Running code generator',
  //   options: ProgressOptions(
  //     animation: ProgressAnimation(
  //       frames:
  //           // a spinner
  //           ['-', '\\', '|', '/'],
  //     ),
  //   ),
  // );

  // await Process.run('flutter', [
  //   'pub',
  //   'run',
  //   'build_runner',
  //   'build',
  //   '--delete-conflicting-outputs'
  // ]).then((value) => print(value.stdout));

  // progress.complete();

  // time.stop();
  // context.logger.info('Time taken: ${time.elapsed.inSeconds} seconds');

  context.logger.success('''\n\n

🥹 Make sure to star the repo on GitHub:
    https://github.com/monzim/FlutterApp-Aurora

Thanks for using Aurora Architecture! 🙏
  ''');
}
