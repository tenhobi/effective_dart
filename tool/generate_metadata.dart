import 'dart:io';

import 'package:effective_dart/src/rules/generator/metadata_generator.dart';
import 'package:effective_dart/src/rules/rules.dart';
import 'package:effective_dart/src/rules/version.dart';

void main() => generateMetadata();

void generateMetadata() {
  print('Generating metadata file.');
  final generator = MetadataGenerator(version: version, rules: allRules);
  final file = File('lib/metadata.$version.yaml');
  file.writeAsStringSync(generator.generate());
  print('Done.');
}
