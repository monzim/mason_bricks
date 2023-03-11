import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final time = Stopwatch()..start();

  final progress = context.logger.progress(
    'Installing packages',
    options: ProgressOptions(
      animation: ProgressAnimation(
        frames:
            // a spinner
            ['-', '\\', '|', '/'],
      ),
    ),
  );

  await Process.run('flutter', [
    'pub',
    'add',
    'flutter_riverpod',
    'riverpod_annotation',
    'go_router',
    'google_fonts',
    'url_launcher',
    'isar',
    'isar_flutter_libs'
  ]).then((value) => print(value.stdout));

  progress.update('Installing dev packages');
  await Process.run('flutter', [
    'pub',
    'add',
    '-d',
    'custom_lint',
    'riverpod_lint',
    'flutter_lints',
    'build_runner',
    'riverpod_generator',
    'go_router_builder',
    'build_verify',
    'isar_generator'
  ]).then((value) => print(value.stdout));

  progress.update('Getting flutter_localizations');
  await Process.run(
      'flutter', ['pub', 'add', 'flutter_localizations', '--sdk=flutter']);

  progress.update('Getting intl');
  await Process.run('flutter', ['pub', 'add', 'intl'])
      .then((value) => print(value.stdout));

  progress.update('Running code generator');
  await Process.run('flutter', [
    'pub',
    'run',
    'build_runner',
    'build',
    '--delete-conflicting-outputs'
  ]).then((value) => print(value.stdout));

  progress.complete();

  time.stop();
  context.logger.info('Time taken: ${time.elapsed.inSeconds} seconds');

  context.logger.success('''\n\n
🎉  Your project is ready to go!

👉 Make sure you add the following to your pubspec.yaml file:
    flutter:
    generate: true

👉 Then run the following command to generate localization files:
    flutter gen-l10n

For more information, check out the README.md file in your project.

🥹 Make sure to star the repo on GitHub:
    https://github.com/monzim/mason_brick

Thanks for using Aurora Architecture! 🙏
  ''');
}
