import 'dart:io';

import 'package:effective_dart/src/rules/generator/analysis_options_generator.dart';
import 'package:effective_dart/src/rules/rules.dart';
import 'package:effective_dart/src/rules/version.dart';

void main() => generateAnalysisOptions();

void generateAnalysisOptions() {
  print('Generating metadata file.');
  final generator = AnalysisOptionsGenerator(version: version, rules: allRules);
  final file = File('lib/analysis_options.$version.yaml');
  file.writeAsStringSync(generator.generate());
  print('Done');
}
