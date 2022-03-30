import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:viva_network/src/dio/network_error_converter.dart';
import 'dio_built_value_converter.dart';

class DioNetworkCallExecutor {
  final NetworkErrorConverter errorConverter;
  final DioBuiltValueConverter dioBuiltValueConverter;
  final Dio dio;
  DioNetworkCallExecutor({required this.dio, required this.dioBuiltValueConverter, required this.errorConverter});
  Future<Either<ErrorType, ReturnType>>
      execute<ErrorType,ReturnType, SingleItemType>({
    required RequestOptions options,
  }) async {
    try {
      if (options.headers[Headers.contentTypeHeader] !=
              Headers.formUrlEncodedContentType) {
        options = dioBuiltValueConverter.convertRequest(options);
      }
      final Response _result = await dio.fetch(options);
      final result = dioBuiltValueConverter
          .convertResponse<ReturnType, SingleItemType>(_result);
      return Right(result.data!);
    }
    on Exception catch (e){
      return Left(errorConverter.convert(e));
    }
  }
}
