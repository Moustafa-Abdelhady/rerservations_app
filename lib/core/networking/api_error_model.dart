import 'package:json_annotation/json_annotation.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/features/doctor_details/ui/widgets/doc_about_tapbar.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  @JsonKey(name: 'data')
  final Map<String, dynamic>? errors;

  ApiErrorModel({
    required this.message,
    this.code,
    this.errors,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  //// returns a string containing all the errors messages
  String getAllErrorMessages() {
    if (errors.isNullOrEmpty()) return message ?? "Unknown Error occured ";

    final errorMessage = errors!.entries.map((entry) {
      final value = entry.value;
      return "${value.join(',')}";
    }).join('\n');

    return errorMessage;
  }
}
