import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/location.dart';
import '../repositories/i_home_repository.dart';

class GetLocationsUseCase extends UseCase<List<Location>, LocationParams> {
  GetLocationsUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, List<Location>>> call(LocationParams params) {
    return repository.getLocations();
  }
}

class LocationParams {
  LocationParams(this.offset);

  final int offset;
}
