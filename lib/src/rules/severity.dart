///
enum Severity {
  ///
  doit,

  ///
  dont,

  ///
  prefer,

  ///
  avoid,

  ///
  consider,
}

///
// ignore: missing_return
String severityToString(Severity severity) {
  switch (severity) {
    case Severity.doit:
      return 'do';
    case Severity.dont:
      return "don't";
    case Severity.prefer:
      return 'prefer';
    case Severity.avoid:
      return 'avoid';
    case Severity.consider:
      return 'consider';
  }
}

///
// ignore: missing_return
String severityToAnalyzerError(Severity severity) {
  switch (severity) {
    case Severity.doit:
      return 'error';
    case Severity.dont:
      return "error";
    case Severity.prefer:
      return 'warning';
    case Severity.avoid:
      return 'warning';
    case Severity.consider:
      return 'info';
  }
}
