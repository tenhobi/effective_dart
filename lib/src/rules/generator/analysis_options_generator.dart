import 'package:meta/meta.dart';

import '../guide.dart';
import '../lint_rule.dart';
import '../severity.dart';
import 'generator.dart';

///
class AnalysisOptionsGenerator extends Generator {
  ///
  AnalysisOptionsGenerator({
    @required String version,
    @required List<LintRule> rules,
  }) : super(version: version, rules: rules);

  ///
  @override
  String generate() {
    final buffer = StringBuffer('# effective_dart version $version\n');

    // Sort rules by guide.
    rules.sort((a, b) => a.guide.index.compareTo(b.guide.index));

    buffer.write(_generateLinter(rules));
    buffer.writeln();
    buffer.write(_generateAnalyzer(rules));

    return buffer.toString();
  }

  String _generateLinter(List<LintRule> rules) {
    final buffer = StringBuffer();
    buffer.write('''
linter:
  rules:
''');

    var currentGuide = rules.first.guide;

    buffer.writeln('    # ${guideToString(currentGuide).toUpperCase()}');
    for (final rule in rules) {
      if (rule.guide != currentGuide) {
        currentGuide = rule.guide;

        buffer.writeln();
        buffer.writeln('    # ${guideToString(currentGuide).toUpperCase()}');
      }

      // An indentation for the line.
      buffer.write('    ');

      // Should the rule be dissabled or ignored?
      if (rule.disabled || rule.severity == Severity.consider) {
        buffer.write('#');
      }

      buffer.write('- ${rule.name} # ${severityToString(rule.severity)}');

      // Each line should end with a break line.
      if (rule.disabled) {
        buffer.writeln(' # ${rule.disabledReason}');
      } else {
        buffer.writeln();
      }
    }

    return buffer.toString();
  }

  String _generateAnalyzer(List<LintRule> rules) {
    final buffer = StringBuffer();
    buffer.write('''
analyzer:
  errors:
''');

    var currentGuide = rules.first.guide;

    buffer.writeln('    # ${guideToString(currentGuide).toUpperCase()}');
    for (final rule in rules) {
      if (rule.guide != currentGuide) {
        currentGuide = rule.guide;

        buffer.writeln();
        buffer.writeln('    # ${guideToString(currentGuide).toUpperCase()}');
      }

      // An indentation for the line.
      buffer.write('    ');

      // Should the error be dissabled or ignored?
      if (rule.disabled || rule.severity == Severity.consider) {
        buffer.write('#');
      }

      buffer.writeln('${rule.name}: ${severityToAnalyzerError(rule.severity)}');
    }

    return buffer.toString();
  }
}
