import 'package:dartz/dartz.dart';
import 'package:untitled1/core/errors/failures.dart';



abstract class AppRepository {


  Future<Either<Failure, List<String>>> getList(
      {required int offset});





}
