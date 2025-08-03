import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'injectable.config.dart'; // this is generated

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => await getIt.init();
