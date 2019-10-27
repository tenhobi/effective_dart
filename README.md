# effective_dart

[![pub package](https://img.shields.io/pub/v/effective_dart.svg)](https://pub.dartlang.org/packages/effective_dart)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This package provides links that attempt to comply with all [*Effective Dart*](https://dart.dev/guides/language/effective-dart) guide rules.

**Be consistent. Be brief.**

> *Note*: This package is inspired by the [pedantic](https://github.com/dart-lang/pedantic) package, which contains lints internally used at Google.

## Using the Lints

To use the lints add a dev dependency in your `pubspec.yaml`:

```yaml
dev_dependencies:
  effective_dart: ^1.1.0
```

Then add an include in your `analysis_options.yaml` file:

```yaml
include: package:effective_dart/analysis_options.yaml
```

You can always specify a specific version instead:

```yaml
include: package:effective_dart/analysis_options.1.1.0.yaml
```

## Unused Lints

Following lints have been considered and will not be enforced by this package:

- `lines_longer_than_80_chars` might be practical not to follow for many people
- `unnecessary_getters` has been [disabled](https://github.com/dart-lang/linter/issues/23)
- `comment_references` is way too restrictive and comment references are handled in different ways in tools ([see this issue](https://github.com/dart-lang/sdk/issues/36974))

## Badge

Show the world you're following the *Effective Dart* guide → [![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart)

```md
[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart)
```

## License

Licensed under the [MIT License](LICENSE).
