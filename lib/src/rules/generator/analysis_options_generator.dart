import 'package:meta/meta.dart';

import '../guide.dart';
import '../lint_rule.dart';
import '../severity.dart';
import 'generator.dart';

///
class AnalysisOptionsGenerator extends Generator {
  ///
  final _buffer = StringBuffer();

  ///
  AnalysisOptionsGenerator({
    @required String version,
    @required List<LintRule> rules,
  }) : super(version: version, rules: rules);

  ///
  @override
  String generate() {
    _buffer.clear();
    _buffer.write('''
# effective_dart version $version
linter:
  rules:
''');

    rules.sort((a, b) => a.guide.index.compareTo(b.guide.index));
    var currentGuide = rules.first.guide;
    _buffer.writeln('    # ${guideToString(currentGuide).toUpperCase()}');
    for (final rule in rules) {
      if (rule.guide != currentGuide) {
        currentGuide = rule.guide;

        _buffer.writeln();
        _buffer.writeln('    # ${guideToString(currentGuide).toUpperCase()}');
      }

      _buffer
          .writeln('    - ${rule.name} # ${severityToString(rule.severity)}');
    }

    return _buffer.toString();
  }
}
