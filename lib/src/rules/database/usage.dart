import '../guide.dart';
import '../lint_rule.dart';
import '../severity.dart';

///
List<LintRule> rules = [
  LintRule(
    name: 'implementation_imports',
    severity: Severity.dont,
    guide: Guide.usage,
    references: [
      // ignore: lines_longer_than_80_chars
      'dont-import-libraries-that-are-inside-the-src-directory-of-another-package',
    ],
  ),
  LintRule(
    name: 'avoid_relative_lib_imports',
    severity: Severity.prefer,
    guide: Guide.usage,
    references: [
      // ignore: lines_longer_than_80_chars
      'prefer-relative-paths-when-importing-libraries-within-your-own-packages-lib-directory',
    ],
  ),
  LintRule(
    name: 'prefer_relative_imports',
    severity: Severity.prefer,
    guide: Guide.usage,
    references: [
      // ignore: lines_longer_than_80_chars
      'prefer-relative-paths-when-importing-libraries-within-your-own-packages-lib-directory',
    ],
  ),
  LintRule(
    name: 'prefer_adjacent_string_concatenation',
    severity: Severity.doit,
    guide: Guide.usage,
    references: [
      'do-use-adjacent-strings-to-concatenate-string-literals',
    ],
  ),
  LintRule(
    name: 'prefer_interpolation_to_compose_strings',
    severity: Severity.prefer,
    guide: Guide.usage,
    references: [
      'prefer-using-interpolation-to-compose-strings-and-values',
    ],
  ),
  LintRule(
    name: 'unnecessary_brace_in_string_interps',
    severity: Severity.avoid,
    guide: Guide.usage,
    references: [
      'avoid-using-curly-braces-in-interpolation-when-not-needed',
    ],
  ),
  LintRule(
    name: 'prefer_collection_literals',
    severity: Severity.doit,
    guide: Guide.usage,
    references: [
      'do-use-collection-literals-when-possible',
    ],
  ),
  LintRule(
    name: 'avoid_function_literals_in_foreach_calls',
    severity: Severity.avoid,
    guide: Guide.usage,
    references: [
      'avoid-using-iterableforeach-with-a-function-literal',
    ],
  ),
  LintRule(
    name: 'prefer_iterable_whereType',
    severity: Severity.doit,
    guide: Guide.usage,
    references: [
      'do-use-wheretype-to-filter-a-collection-by-type',
    ],
  ),
  LintRule(
    name: 'prefer_function_declarations_over_variables',
    severity: Severity.doit,
    guide: Guide.usage,
    references: [
      'do-use-a-function-declaration-to-bind-a-function-to-a-name',
    ],
  ),
  LintRule(
    name: 'unnecessary_lambdas',
    severity: Severity.dont,
    guide: Guide.usage,
    references: [
      'dont-create-a-lambda-when-a-tear-off-will-do',
    ],
  ),
  LintRule(
    name: 'prefer_equal_for_default_values',
    severity: Severity.doit,
    guide: Guide.usage,
    references: [
      'do-use--to-separate-a-named-parameter-from-its-default-value',
    ],
  ),
  LintRule(
    name: 'avoid_init_to_null',
    severity: Severity.dont,
    guide: Guide.usage,
    references: [
      'dont-use-an-explicit-default-value-of-null',
    ],
  ),
  LintRule(
    name: 'unnecessary_getters_setters',
    severity: Severity.dont,
    guide: Guide.usage,
    references: [
      'dont-wrap-a-field-in-a-getter-and-setter-unnecessarily',
    ],
  ),
  LintRule(
    name: 'unnecessary_getters',
    severity: Severity.prefer,
    guide: Guide.usage,
    references: [
      'prefer-using-a-final-field-to-make-a-read-only-property',
    ],
    disabled: true,
    disabledReason:
        'Disabled pending fix: https://github.com/dart-lang/linter/issues/23',
  ),
  LintRule(
    name: 'prefer_expression_function_bodies',
    severity: Severity.consider,
    guide: Guide.usage,
    references: [
      'consider-using--for-simple-members',
    ],
  ),
  LintRule(
    name: 'unnecessary_this',
    severity: Severity.dont,
    guide: Guide.usage,
    references: [
      'dont-use-this-when-not-needed-to-avoid-shadowing',
    ],
  ),
  LintRule(
    name: 'prefer_initializing_formals',
    severity: Severity.doit,
    guide: Guide.usage,
    references: [
      'do-use-initializing-formals-when-possible',
    ],
  ),
  LintRule(
    name: 'type_init_formals',
    severity: Severity.dont,
    guide: Guide.usage,
    references: [
      'dont-type-annotate-initializing-formals',
    ],
  ),
  LintRule(
    name: 'empty_constructor_bodies',
    severity: Severity.doit,
    guide: Guide.usage,
    references: [
      'do-use--instead-of--for-empty-constructor-bodies',
    ],
  ),
  LintRule(
    name: 'unnecessary_new',
    severity: Severity.dont,
    guide: Guide.usage,
    references: [
      'dont-use-new',
    ],
  ),
  LintRule(
    name: 'unnecessary_const',
    severity: Severity.dont,
    guide: Guide.usage,
    references: [
      'dont-use-const-redundantly',
    ],
  ),
  LintRule(
    name: 'avoid_catches_without_on_clauses',
    severity: Severity.avoid,
    guide: Guide.usage,
    references: [
      'avoid-catches-without-on-clauses',
    ],
  ),
  LintRule(
    name: 'avoid_catching_errors',
    severity: Severity.dont,
    guide: Guide.usage,
    references: [
      'dont-explicitly-catch-error-or-types-that-implement-it',
    ],
  ),
  LintRule(
    name: 'use_rethrow_when_possible',
    severity: Severity.doit,
    guide: Guide.usage,
    references: [
      'do-use-rethrow-to-rethrow-a-caught-exception',
    ],
  ),
];
