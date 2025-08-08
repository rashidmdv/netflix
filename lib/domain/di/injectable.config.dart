// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:netflix/application/downloads/downloads_bloc.dart' as _i42;
import 'package:netflix/application/fast_laugh/fast_laugh_bloc.dart' as _i855;
import 'package:netflix/application/hot_and_new/hot_and_new_bloc.dart' as _i803;
import 'package:netflix/application/search/search_bloc.dart' as _i85;
import 'package:netflix/domain/downloads/i_downloads_repo.dart' as _i350;
import 'package:netflix/domain/hot_and_new/hot_and_new_service.dart' as _i495;
import 'package:netflix/domain/search/search_service.dart' as _i812;
import 'package:netflix/infrastructure/downloads/downloads_repositery.dart'
    as _i402;
import 'package:netflix/infrastructure/hot_and_new.dart/hot_and_new_impl.dart'
    as _i884;
import 'package:netflix/infrastructure/search/search_impl.dart' as _i117;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i350.IDownloadsRepo>(() => _i402.DownloadsRepositery());
    gh.lazySingleton<_i495.HotAndNewService>(() => _i884.HotAndNewImpl());
    gh.lazySingleton<_i812.SearchService>(() => _i117.SearchImpl());
    gh.factory<_i855.FastLaughBloc>(
      () => _i855.FastLaughBloc(gh<_i350.IDownloadsRepo>()),
    );
    gh.factory<_i803.HotAndNewBloc>(
      () => _i803.HotAndNewBloc(gh<_i495.HotAndNewService>()),
    );
    gh.factory<_i85.SearchBloc>(
      () => _i85.SearchBloc(
        gh<_i350.IDownloadsRepo>(),
        gh<_i812.SearchService>(),
      ),
    );
    gh.factory<_i42.DownloadsBloc>(
      () => _i42.DownloadsBloc(gh<_i350.IDownloadsRepo>()),
    );
    return this;
  }
}
