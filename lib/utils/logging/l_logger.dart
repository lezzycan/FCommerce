import 'package:logger/logger.dart';

class LLoggerHelper {
  LLoggerHelper._();

  static final Logger _logger = Logger(
    printer: PrettyPrinter(
        // Customize log level based on needs
        ),
    level: Level.debug,
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
