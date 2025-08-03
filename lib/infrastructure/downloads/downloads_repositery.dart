import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_urls.dart';
import 'package:netflix/domain/core/main_failuers/main_failures.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepositery implements IDownloadsRepo {
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response = await Dio(BaseOptions()).get(ApiUrls.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // print(response.data['results']);
        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();

        print(downloadsList);
        return Right(downloadsList);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }
}
