// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'make_appoint_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MakeAppointRequestBody _$MakeAppointRequestBodyFromJson(
        Map<String, dynamic> json) =>
    MakeAppointRequestBody(
      doctor_id: json['doctor_id'] as String,
      start_time: json['start_time'] as String,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$MakeAppointRequestBodyToJson(
        MakeAppointRequestBody instance) =>
    <String, dynamic>{
      'doctor_id': instance.doctor_id,
      'start_time': instance.start_time,
      'notes': instance.notes,
    };
