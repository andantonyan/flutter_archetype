import 'dart:convert';

import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:stack_trace/stack_trace.dart';

void configureLogger() {
  // TODO: get level from env configuration
  Logger.root.level = kDebugMode ? Level.INFO : Level.SEVERE;
  Logger.root.onRecord.listen((record) => _stdIOLogListener(record));
}

StringBuffer _colorLog(LogRecord record) {
  AnsiPen pen;
  if (record.level < Level.WARNING) {
    pen = AnsiPen()..cyan();
  } else if (record.level < Level.SEVERE) {
    pen = AnsiPen()..yellow();
  } else {
    pen = AnsiPen()..red();
  }

  final String? loggerName = pen('${record.loggerName} --');
  final String? level = pen('[${record.level}]');
  final eraseLine = '\x1b[2K\r';
  var lines = <Object?>['$eraseLine$loggerName $level ${_recordHeader(record)}${record.message}'];

  if (record.error != null) {
    lines.add(record.error);
  }

  if (record.stackTrace != null) {
    var trace = Trace.from(record.stackTrace!);

    lines.add(trace);
  }

  var message = StringBuffer(lines.join('\n'));
  var multiLine = LineSplitter.split(message.toString()).length > 2;

  if (record.level > Level.INFO || multiLine) {
    message.writeln('');
  }
  return message;
}

void _stdIOLogListener(LogRecord record) => print(_colorLog(record));

String _recordHeader(LogRecord record) {
  var maybeSplit = record.level >= Level.WARNING ? '\n' : '';
  return record.loggerName.contains(' ') ? '${record.loggerName}:$maybeSplit' : '';
}
