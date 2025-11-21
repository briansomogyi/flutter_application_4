import 'package:flutter/material.dart';

String toHex(Color color) {
  final int code = color.toARGB32();
  return '#${code.toRadixString(16)}';
}
