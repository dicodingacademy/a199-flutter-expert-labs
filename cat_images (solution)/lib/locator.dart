import 'package:cat_images/data/repositories/cat_repository.dart';
import 'package:cat_images/presentation/notifier/cat_notifier.dart';
import 'package:cat_images/data/utils/ssl_pinning.dart';
import 'package:get_it/get_it.dart';
import 'package:http/io_client.dart';

final locator = GetIt.instance;

Future<void> init() async {
  IOClient ioClient = await SslPinning.ioClient;
  // notifier
  locator.registerLazySingleton<CatNotifier>(() => CatNotifier(locator()));
  // repository
  locator.registerLazySingleton<CatRepository>(() => CatRepository(locator()));
  // external i.e. http client
  locator.registerLazySingleton<IOClient>(() => ioClient);
}
