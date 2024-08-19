import 'package:json_annotation/json_annotation.dart';

part 'spcialization_response.g.dart';
// part 'specialization_response_model.g.dart';

@JsonSerializable()
class SpecializationResponseModel {
  @JsonKey(name: 'data')
  List<SpecializationData?>? specializationDataList;

  SpecializationResponseModel({
    this.specializationDataList,
  });

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<Doctors?>? doctorsList;

  SpecializationData({
    this.id,
    this.name,
    this.doctorsList,
  });

  factory SpecializationData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataFromJson(json);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  @JsonKey(name: 'appoint_price')
  int? price;
  @JsonKey(name: 'start_time')
  String? startTime;
  @JsonKey(name: 'end_time')
  String? endTime;
  String? degree;
  City? city;

  Doctors({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.address,
    this.price,
    this.startTime,
    this.endTime,
    this.degree,
    this.city,
  });

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}

@JsonSerializable()
class City {
  @JsonKey(name: 'name')
  String? cityName;

  City({
    this.cityName,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
