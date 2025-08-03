import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failuers/main_failures.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages();
}
