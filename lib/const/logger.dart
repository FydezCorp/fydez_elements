import 'package:logger/logger.dart';

Logger configDebugLogger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 8,
    lineLength: 120,
    colors: true,
    printEmojis: true,
    printTime: true,
  ),
  level: Level.error,
);

class SerializationErrorLogger {
  static void showConfigError({
    required String? value,
    required Object object,
  }) {
    configDebugLogger.e(
      '🚨 Config Parsing Error: The value "$value" was provider for the object "${object.toString()}" and we couldn\'t serialize it.',
    );
  }
}
