///
enum Guide {
  ///
  style,

  ///
  documentation,

  ///
  usage,

  ///
  design,
}

///
// ignore: missing_return
String guideToString(Guide guide) {
  switch (guide) {
    case Guide.style:
      return 'style';
    case Guide.documentation:
      return 'documentation';
    case Guide.usage:
      return 'usage';
    case Guide.design:
      return 'design';
  }
}

///
String referenceInGuideToUrl(Guide guide, String hash) {
  return 'https://dart.dev/guides/language/effective-dart/${guideToString(guide)}#$hash';
}
