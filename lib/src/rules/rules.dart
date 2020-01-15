import 'guide.dart';
import 'lint_rule.dart';
import 'severity.dart';

///
List<LintRule> allRules = []
  ..addAll(_styleRules)
  ..addAll(_documentationRules)
  ..addAll(_usageRules)
  ..addAll(_designRules);

List<LintRule> _styleRules = [
  LintRule(
    name: 'camel_case_types',
    severity: Severity.doit,
    guide: Guide.style,
    references: [
      'do-name-types-using-uppercamelcase',
    ],
  ),
  LintRule(
    name: 'camel_case_extensions',
    severity: Severity.doit,
    guide: Guide.style,
    references: [
      'do-name-extensions-using-uppercamelcase',
    ],
  ),
  LintRule(
    name: 'library_names',
    severity: Severity.doit,
    guide: Guide.style,
    references: [
      'do-name-libraries-and-source-files-using-lowercase_with_underscores',
    ],
  ),
  LintRule(
    name: 'file_names',
    severity: Severity.doit,
    guide: Guide.style,
    references: [
      'do-name-libraries-and-source-files-using-lowercase_with_underscores',
    ],
  ),
  LintRule(
    name: 'library_prefixes',
    severity: Severity.doit,
    guide: Guide.style,
    references: [
      'do-name-import-prefixes-using-lowercase_with_underscores',
    ],
  ),
  LintRule(
    name: 'non_constant_identifier_names',
    severity: Severity.doit,
    guide: Guide.style,
    references: [
      'do-name-other-identifiers-using-lowercamelcase',
    ],
  ),
  LintRule(
    name: 'constant_identifier_names',
    severity: Severity.prefer,
    guide: Guide.style,
    references: [
      'prefer-using-lowercamelcase-for-constant-names',
    ],
  ),
  LintRule(
    name: 'directives_ordering',
    severity: Severity.doit,
    guide: Guide.style,
    references: [
      'do-place-dart-imports-before-other-imports',
      'do-place-package-imports-before-relative-imports',
      'prefer-placing-third-party-package-imports-before-other-imports',
      'do-specify-exports-in-a-separate-section-after-all-imports',
      'do-sort-sections-alphabetically',
    ],
  ),
  LintRule(
    name: 'lines_longer_than_80_chars',
    severity: Severity.avoid,
    guide: Guide.style,
    references: [
      'avoid-lines-longer-than-80-characters',
    ],
  ),
  LintRule(
    name: 'curly_braces_in_flow_control_structures',
    severity: Severity.doit,
    guide: Guide.style,
    references: [
      'do-use-curly-braces-for-all-flow-control-structures',
    ],
  ),
];

List<LintRule> _documentationRules = [];

List<LintRule> _usageRules = [];

List<LintRule> _designRules = [];
