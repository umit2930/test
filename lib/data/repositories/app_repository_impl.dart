import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:untitled1/core/errors/failures.dart';
import 'package:untitled1/data/data_sources/app_data_source.dart';

import 'package:untitled1/domain/repositories/app_repository.dart';


@LazySingleton(as: AppRepository)
class AppRepositoryImpl extends AppRepository {
  final AppDataSource dataSource;

  AppRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, List<String>>> getList(
      {required int offset }) async {
    try {
      return Right(await dataSource.getList(offset:offset));
    } on Exception catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
