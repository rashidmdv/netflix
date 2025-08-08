import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failuers/main_failures.dart';
import 'package:netflix/domain/hot_and_new/model/hot_and_new.dart';

abstract class HotAndNewService {
  Future<Either<MainFailures,HotAndNew>> getHotAndMovieData();
  Future<Either<MainFailures,HotAndNew>> getHotAndTvData();
}