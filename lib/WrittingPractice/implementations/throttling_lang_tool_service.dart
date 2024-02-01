
import 'package:throttling/throttling.dart';

import '../domain/language_check_service.dart';
import '../domain/mistake.dart';

/// A language check service with debouncing.
class ThrottlingLangToolService extends LanguageCheckService {
  /// A base language check service that is used to interact
  /// with the language check API.
  final LanguageCheckService baseService;

  /// A throttling used to throttle the API calls.
  final Throttling throttling;

  /// Creates a new instance of the [ThrottlingLangToolService] class.
  ThrottlingLangToolService(
    this.baseService,
    Duration throttlingDuration,
  ) : throttling = Throttling(duration: throttlingDuration);

  @override
  Future<List<Mistake>> findMistakes(String text) =>
      throttling.throttle(() => baseService.findMistakes(text))
          as Future<List<Mistake>>;

  @override
  Future<void> dispose() async {
    throttling.close();
    await baseService.dispose();
  }
}
