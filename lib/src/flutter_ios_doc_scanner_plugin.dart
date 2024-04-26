import 'package:flutter/services.dart';

class FlutterIOSDocScannerPlugin {
  final _channel = const MethodChannel('flutter_ios_doc_scanner');
  FlutterIOSDocScannerPlugin._();
  factory FlutterIOSDocScannerPlugin.instance() {
    return FlutterIOSDocScannerPlugin._();
  }
  Future<List<String>> pickDocument(String simulatorImagePath) async {
    final List<dynamic>? images =
        await _channel.invokeMethod('pickDocument', simulatorImagePath);
    if(images == null) return [];
    return images.map((e) => e.toString()).toList();
  }
}
