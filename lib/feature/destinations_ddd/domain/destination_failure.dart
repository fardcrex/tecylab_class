import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination_failure.freezed.dart';

@freezed
sealed class DestinationFailure with _$DestinationFailure {
  const factory DestinationFailure.serverError(String message, int code) =
      ServerError;

  const factory DestinationFailure.timeIsNotEven() = TimeIsNotEven;

  const factory DestinationFailure.unexpectedError(String message) =
      UnexpectedError;

  const factory DestinationFailure.noInternetConnection(String message) =
      NoInternetConnection;
}
