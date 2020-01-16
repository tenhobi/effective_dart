import 'database/design.dart' as design;
import 'database/documentation.dart' as documentation;
import 'database/style.dart' as style;
import 'database/usage.dart' as usage;
import 'lint_rule.dart';

///
List<LintRule> allRules = []
  ..addAll(style.rules)
  ..addAll(documentation.rules)
  ..addAll(usage.rules)
  ..addAll(design.rules);
