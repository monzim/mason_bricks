import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  // Read vars.
  final systemDefaultTheme = context.vars['systemDefaultTheme'];
  final materialThemeColor = context.vars['materialThemeColor'];
  final fontName = context.vars['fontName'];

  // Use the `Logger` instance.
  context.logger.info('🚀 Aurora is ready to go!');
  context.logger.info('👉  System default theme: $systemDefaultTheme');
  context.logger.info('👉  Material theme color: $materialThemeColor');

  final fontList = [
    'roboto',
    'ubuntu',
    'openSans',
    'lato',
    'atma',
    'montserrat',
    'poppins',
    'robotoCondensed',
    'robotoSlab',
    'sourceSansPro',
    'ubuntuMono'
  ];

  if (!fontList.contains(fontName)) {
    context.logger.err('\n🚨  Font name is not valid!');
    context.logger.info('🚨  Please choose one of the following fonts:');
    context.logger.info('🚨  $fontList');
    context.logger.err('🚨  Aborting...');
    exit(1);
  }

  context.logger.info('👉  Font name: $fontName');
  context.logger.info('\n');

  // Update vars.
  context.vars['current_year'] = DateTime.now().year;
}
