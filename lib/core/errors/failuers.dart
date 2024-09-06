import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServiceFailure extends Failure {
  ServiceFailure(super.errMessage);

  factory ServiceFailure.fromDioException(DioException dioexception) {
    switch (dioexception.type) {
      case DioExceptionType.connectionTimeout:
        return ServiceFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServiceFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServiceFailure('Recive timeout with ApiServer');

      case DioExceptionType.badCertificate:
      // TODO: Handle this case.

      case DioExceptionType.badResponse:
        return ServiceFailure.fromResponse(
            dioexception.response!.statusCode!, dioexception.response!.data);

      // TODO: Handle this case.

      case DioExceptionType.cancel:
        return ServiceFailure('Cancrel with ApiServer');

      case DioExceptionType.connectionError:
        return ServiceFailure('Connection time error with ApiServer');

      case DioExceptionType.unknown:
        if (dioexception.message!.contains('SocketException')) {
          return ServiceFailure('No Internet Connection');
        }
        return ServiceFailure('Unexpected Error, Please try again!');
      default:
        return ServiceFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServiceFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServiceFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServiceFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServiceFailure('Internal Server error, Please try later');
    } else {
      return ServiceFailure('Opps There was an Error, Please try again');
    }
  }
}
