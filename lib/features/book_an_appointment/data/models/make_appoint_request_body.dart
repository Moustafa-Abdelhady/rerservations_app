import 'package:json_annotation/json_annotation.dart';

part 'make_appoint_request_body.g.dart';

@JsonSerializable()
class MakeAppointRequestBody {
  final String doctor_id;
  final String start_time;
  final String? notes;

  MakeAppointRequestBody({
    required this.doctor_id,
    required this.start_time,
    this.notes,
  });

  Map<String, dynamic> toJson() => _$MakeAppointRequestBodyToJson(this);
}
