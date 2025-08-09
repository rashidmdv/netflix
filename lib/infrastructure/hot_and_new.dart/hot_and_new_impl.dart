import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_urls.dart';
import 'package:netflix/domain/core/main_failuers/main_failures.dart';
import 'package:netflix/domain/hot_and_new/hot_and_new_service.dart';
import 'package:netflix/domain/hot_and_new/model/hot_and_new.dart';

@LazySingleton(as: HotAndNewService)
class HotAndNewImpl implements HotAndNewService {
  @override
  Future<Either<MainFailures, HotAndNew>> getHotAndMovieData() async {
    try {
      final Response response = await Dio(
        BaseOptions(),
      ).get(ApiUrls.howAndNewMovie);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNew.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, HotAndNew>> getHotAndTvData() async {
    try {
      final Response response = await Dio(
        BaseOptions(),
      ).get(ApiUrls.howAndNewTv);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNew.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }
}
