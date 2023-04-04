import 'dart:core';
import 'dart:io';

Future<void> main(List<String> args) async {
  stdout.writeAll(args);
  stdout.writeln('ok');
}
