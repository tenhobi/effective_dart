import 'dart:io';

import 'package:effective_dart/src/rules/generator/metadata_generator.dart';
import 'package:effective_dart/src/rules/rules.dart';
import 'package:effective_dart/src/rules/version.dart';

void main() => generateMetadata();

void generateMetadata() {
  const fileName = 'metadata';
  const filePath = 'lib/$fileName';
  const fileExtension = 'yaml';

  print('Generating metadata file.');
  final generator = MetadataGenerator(version: version, rules: allRules);
  final file = File('$filePath.$version.$fileExtension');
  file.writeAsStringSync(generator.generate());

  print('Updating base file.');
  final baseFile = File('$filePath.$fileExtension');
  baseFile.writeAsStringSync(
      'include: package:effective_dart/$fileName.$version.$fileExtension');

  print('Done.');
}
