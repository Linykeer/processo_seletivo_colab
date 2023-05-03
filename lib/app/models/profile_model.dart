// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProfileModel {
  final String gender;
  NameModel? name;
  LocationModel? location;
  final String email;
  LoginModel? login;
  RegisteredAndDobModel? dob;
  RegisteredAndDobModel? registered;
  final String phone;
  final String cell;
  IdModel? id;
  PictureModel? picture;
  final String nat;
  ProfileModel({
    required this.gender,
    this.name,
    this.location,
    required this.email,
    this.login,
    this.dob,
    this.registered,
    required this.phone,
    required this.cell,
    this.id,
    this.picture,
    required this.nat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gender': gender,
      'name': name?.toMap(),
      'location': location?.toMap(),
      'email': email,
      'login': login?.toMap(),
      'dob': dob?.toMap(),
      'registered': registered?.toMap(),
      'phone': phone,
      'cell': cell,
      'id': id?.toMap(),
      'picture': picture?.toMap(),
      'nat': nat,
    };
  }

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
      gender: map['gender'] ?? '',
      name: map['name'] != null ? NameModel.fromMap(map['name'] as Map<String, dynamic>) : null,
      location: map['location'] != null ? LocationModel.fromMap(map['location'] as Map<String, dynamic>) : null,
      email: map['email'] ?? '',
      login: map['login'] != null ? LoginModel.fromMap(map['login'] as Map<String, dynamic>) : null,
      dob: map['dob'] != null ? RegisteredAndDobModel.fromMap(map['dob'] as Map<String, dynamic>) : null,
      registered:
          map['registered'] != null ? RegisteredAndDobModel.fromMap(map['registered'] as Map<String, dynamic>) : null,
      phone: map['phone'] ?? '',
      cell: map['cell'] ?? '',
      id: map['id'] != null ? IdModel.fromMap(map['id'] as Map<String, dynamic>) : null,
      picture: map['picture'] != null ? PictureModel.fromMap(map['picture'] as Map<String, dynamic>) : null,
      nat: map['nat'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfileModel.fromJson(String source) => ProfileModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class PictureModel {
  final String large;
  final String medium;
  final String thumbnail;
  PictureModel({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'large': large,
      'medium': medium,
      'thumbnail': thumbnail,
    };
  }

  factory PictureModel.fromMap(Map<String, dynamic> map) {
    return PictureModel(
      large: map['large'] ?? '',
      medium: map['medium'] ?? '',
      thumbnail: map['thumbnail'] ?? '',
    );
  }
}

class IdModel {
  final String name;
  String? value;
  IdModel({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory IdModel.fromMap(Map<String, dynamic> map) {
    return IdModel(
      name: map['name'] ?? '',
      value: map['value'] != null ? map['value'] as String : null,
    );
  }
}

class RegisteredAndDobModel {
  final String date;
  final int age;
  RegisteredAndDobModel({
    required this.date,
    required this.age,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'age': age,
    };
  }

  factory RegisteredAndDobModel.fromMap(Map<String, dynamic> map) {
    return RegisteredAndDobModel(date: map['date'] ?? '', age: map['age'] ?? 0);
  }
}

class LoginModel {
  final String uuid;
  final String username;
  final String password;
  final String salt;
  final String md5;
  final String sh1;
  final String sha256;
  LoginModel({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sh1,
    required this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'username': username,
      'password': password,
      'salt': salt,
      'md5': md5,
      'sh1': sh1,
      'sha256': sha256,
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      uuid: map['uuid'] ?? '',
      username: map['username'] ?? '',
      password: map['password'] ?? '',
      salt: map['salt'] ?? '',
      md5: map['md5'] ?? '',
      sh1: map['sh1'] ?? '',
      sha256: map['sha256'] ?? '',
    );
  }
}

class NameModel {
  final String title;
  final String first;
  final String last;
  NameModel({
    required this.title,
    required this.first,
    required this.last,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'first': first,
      'last': last,
    };
  }

  factory NameModel.fromMap(Map<String, dynamic> map) {
    return NameModel(
      title: map['title'] ?? '',
      first: map['first'] ?? '',
      last: map['last'] ?? '',
    );
  }
}

class LocationModel {
  final StreetModel street;
  final String city;
  final String state;
  final String country;
  final dynamic postcode;
  final CoordinatesModel coordinates;
  final TimeZoneModel timezone;
  LocationModel({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'street': street.toMap(),
      'city': city,
      'state': state,
      'country': country,
      'postcode': postcode,
      'coordinates': coordinates.toMap(),
      'timezone': timezone.toMap(),
    };
  }

  factory LocationModel.fromMap(Map<String, dynamic> map) {
    return LocationModel(
      street: StreetModel.fromMap(map['street'] as Map<String, dynamic>),
      city: map['city'] ?? '',
      state: map['state'] ?? '',
      country: map['country'] ?? '',
      postcode: map['postcode'] ?? 0,
      coordinates: CoordinatesModel.fromMap(map['coordinates'] as Map<String, dynamic>),
      timezone: TimeZoneModel.fromMap(map['timezone'] as Map<String, dynamic>),
    );
  }
}

class CoordinatesModel {
  final String latitude;
  final String longitude;
  CoordinatesModel({
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory CoordinatesModel.fromMap(Map<String, dynamic> map) {
    return CoordinatesModel(
      latitude: map['latitude'] ?? '',
      longitude: map['longitude'] ?? '',
    );
  }
}

class TimeZoneModel {
  final String offset;
  final String description;
  TimeZoneModel({
    required this.offset,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offset': offset,
      'description': description,
    };
  }

  factory TimeZoneModel.fromMap(Map<String, dynamic> map) {
    return TimeZoneModel(
      offset: map['offset'] ?? '',
      description: map['description'] ?? '',
    );
  }
}

class StreetModel {
  final int number;
  final String name;
  StreetModel({
    required this.number,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'name': name,
    };
  }

  factory StreetModel.fromMap(Map<String, dynamic> map) {
    return StreetModel(
      number: map['number'] ?? 0,
      name: map['name'] ?? '',
    );
  }
}
