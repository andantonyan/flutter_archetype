class StringUtils {
  const StringUtils._();

  static String removeNonASCII(String str) {
    return str.replaceAll(RegExp(r'[^\x20-\x7E]'), '');
  }
}
