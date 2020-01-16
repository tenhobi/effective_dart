import 'dart:io';

import 'package:effective_dart/src/rules/generator/analysis_options_generator.dart';
import 'package:effective_dart/src/rules/rules.dart';
import 'package:effective_dart/src/rules/version.dart';

void main() => generateAnalysisOptions();

void generateAnalysisOptions() {
  const fileName = 'analysis_options';
  const filePath = 'lib/$fileName';
  const fileExtension = 'yaml';

  print('Generating analysis options file.');
  final generator = AnalysisOptionsGenerator(version: version, rules: allRules);
  final file = File('$filePath.$version.$fileExtension');
  file.writeAsStringSync(generator.generate());

  print('Updating base file.');
  final baseFile = File('$filePath.$fileExtension');
  baseFile.writeAsStringSync(
      'include: package:effective_dart/$fileName.$version.$fileExtension');

  print('Done.');
}
