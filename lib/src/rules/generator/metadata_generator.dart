import 'package:meta/meta.dart';

import '../guide.dart';
import '../lint_rule.dart';
import '../severity.dart';
import 'generator.dart';

///
class MetadataGenerator extends Generator {
  ///
  final _buffer = StringBuffer();

  ///
  MetadataGenerator({
    @required String version,
    @required List<LintRule> rules,
  }) : super(version: version, rules: rules);

  ///
  @override
  String generate() {
    _buffer.write('''
# effective_dart version $version
effective_dart:
''');

    for (final rule in rules) {
      _buffer.writeln('  ${rule.name}:');
      _buffer.writeln('    guide: ${guideToString(rule.guide)}');
      _buffer.writeln('    severity: ${severityToString(rule.severity)}');
      _buffer.writeln('    references:');

      for (final reference in rule.references) {
        _buffer
            .writeln('      - ${referenceInGuideToUrl(rule.guide, reference)}');
      }

      if (rule.disabled) {
        _buffer.writeln('    disabled: true');
        _buffer.writeln('    disabled_reason: "${rule.disabledReason}"');
      }
    }

    return _buffer.toString();
  }
}
