import 'package:json_annotation/json_annotation.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/features/doctor_details/ui/widgets/doc_about_tapbar.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final dynamic message;
  final int? code;
  @JsonKey(name: 'data')
  final dynamic errors;

  ApiErrorModel({
    this.message,
    this.code,
    this.errors,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  //// returns a string containing all the errors messages.

  String getAllErrorMessages() {
    if (errors == null || errors is List && (errors as List).isEmpty) {
      return message ?? "Unknown Error occurred";
    }

    // TODO : explain this new update
    if (errors is Map<String, dynamic>) {
      final errorMessage =
          (errors as Map<String, dynamic>).entries.map((entry) {
        final value = entry.value;
        return "${value.join(',')}";
      }).join('\n');

      return errorMessage;
    } else if (errors is List) {
      return (errors as List).join('\n');
    }

    return message ?? "Unknown Error occurred";
  }

  // String getAllErrorMessages() {
  //   if (errors.isNullOrEmpty()) return message ?? "Unknown Error occured ";

  //   final errorMessage = errors!.entries.map((entry) {
  //     final value = entry.value;
  //     return "${value.join(',')}";
  //   }).join('\n');

  //   return errorMessage;
  // }
}
