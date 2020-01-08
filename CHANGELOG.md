# Changelog

This project adheres to [Semantic Versioning](http://semver.org).

## 1.2.1

- Applied [Semantic Line Breaks](https://sembr.org)
- Changed description pursuant to [Analysis options](<https://dart.dev/guides/language/analysis-options#effective-dart-rules>) site
- Fixed too short description ([#22](https://github.com/tenhobi/effective_dart/issues/22))

## 1.2.0

- Added rule [`lines_longer_than_80_chars`](https://dart-lang.github.io/linter/lints/lines_longer_than_80_chars.html) ([#13](https://github.com/tenhobi/effective_dart/issues/13))
- Added rule [`implementation_imports`](https://dart-lang.github.io/linter/lints/implementation_imports.html) ([#14](https://github.com/tenhobi/effective_dart/issues/14))
- Added rule [`prefer_relative_imports`](https://dart-lang.github.io/linter/lints/prefer_relative_imports.html) ([#15](https://github.com/tenhobi/effective_dart/issues/15))
- Added rule [`camel_case_extensions`](https://dart-lang.github.io/linter/lints/camel_case_extensions.html) ([#16](https://github.com/tenhobi/effective_dart/issues/16)
- Added rule [`avoid_catching_errors`](https://dart-lang.github.io/linter/lints/avoid_catching_errors.html) ([#17](https://github.com/tenhobi/effective_dart/issues/17))
- Added rule [`prefer_mixin`](https://dart-lang.github.io/linter/lints/prefer_mixin.html) ([#18](https://github.com/tenhobi/effective_dart/issues/18))
- Added rule [`avoid_types_on_closure_parameters`](https://dart-lang.github.io/linter/lints/avoid_types_on_closure_parameters.html) ([#19](https://github.com/tenhobi/effective_dart/issues/19))
- Added rule [`avoid_equals_and_hash_code_on_mutable_classes`](https://dart-lang.github.io/linter/lints/avoid_equals_and_hash_code_on_mutable_classes.html) ([#20](https://github.com/tenhobi/effective_dart/issues/20))

## 1.1.2

- Updated documentation with a chapter about consider lints
- Added links to lints mentioned in README

## 1.1.0

- Disabled [`comment_references`](https://dart-lang.github.io/linter/lints/comment_references.html) because it is way too restrictive ([see this issue](https://github.com/dart-lang/sdk/issues/36974))

## 1.0.1

- Fixed SDK version
- Enhanced README

## 1.0.0

- Added linst according to the current state of the Effective Dart `analysis_options.yaml`
