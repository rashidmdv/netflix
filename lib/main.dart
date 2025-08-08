import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/domain/di/injectable.dart';
import 'package:netflix/presentation/main_page/screen_main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  // some time maybe facing issue in production, so need to add WidgetsFlutterBinding for avoiding that
  WidgetsFlutterBinding.ensureInitialized();
  // this call the injection
  await configureDependencies();

  // Optional but helpful
  // assert(getIt.isRegistered<DownloadsBloc>(), 'DownloadsBloc not registered!');
  // assert(
  //   getIt.isRegistered<IDownloadsRepo>(),
  //   'IDownloadsRepo not registered!',
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (ctx) => getIt<DownloadsBloc>())
        BlocProvider(
          create: (ctx) => getIt.isRegistered<DownloadsBloc>()
              ? getIt<DownloadsBloc>()
              : throw Exception('DownloadsBloc not registered'),
        ),
        BlocProvider(
          create: (ctx) => getIt.isRegistered<FastLaughBloc>()
              ? getIt<FastLaughBloc>()
              : throw Exception('FastLaughBloc not registered'),
        ),
        BlocProvider(
          create: (ctx) => getIt.isRegistered<SearchBloc>()
              ? getIt<SearchBloc>()
              : throw Exception('SearchBloc not registered'),
        ),
        BlocProvider(
          create: (ctx) => getIt.isRegistered<HotAndNewBloc>()
              ? getIt<HotAndNewBloc>()
              : throw Exception('HotAndNewBloc not registered'),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            titleTextStyle: TextStyle(color: Colors.white),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          fontFamily: GoogleFonts.montserrat().fontFamily,
          scaffoldBackgroundColor: backgroundColor,
          textTheme: const TextTheme(
            bodySmall: TextStyle(color: Colors.white),
            bodyLarge: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white),
          ),
        ),
        home: ScreenMainPage(),
      ),
    );
  }
}
