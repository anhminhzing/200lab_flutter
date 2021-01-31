class Name {
  String title;
  String first;
  String last;

  Name({this.title, this.first, this.last});

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      title: json['title'] as String,
      first: json['first'] as String,
      last: json['last'] as String,
    );
  }

  Map<String, dynamic> toJson() =>
      {'title': title, 'first': first, 'last': last};

  @override
  String toString() {
    return toJson().toString();
  }
}

class Street {
  String name;
  String number;

  Street({name, number});

  factory Street.fromJson(Map<String, dynamic> json) {
    return Street(
      name: json['name'] as String,
      number: json['number'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'number': number,
      };

  @override
  String toString() {
    return toJson().toString();
  }
}

class Coordinates {
  double latitude;
  double longitude;

  Coordinates({latitude, longitude});

  factory Coordinates.fromJson(Map<String, dynamic> json) {
    return Coordinates(
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
    );
  }

  Map<String, dynamic> toJson() => {
        'latitude': latitude,
        'longitude': longitude,
      };

  @override
  String toString() {
    return toJson().toString();
  }
}

class TimeZone {
  String offset;
  String description;

  TimeZone({offset, description});

  factory TimeZone.fromJson(Map<String, dynamic> json) {
    return TimeZone(
      offset: json['offset'] as String,
      description: json['description'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'offset': offset,
        'description': description,
      };

  @override
  String toString() {
    return toJson().toString();
  }
}

class Location {
  Street street;
  String city;
  String state;
  String country;
  String postcode;
  Coordinates coordinates;
  TimeZone timezone;

  Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.coordinates,
    this.timezone,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      street: Street.fromJson(json['street']),
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      postcode: json['postcode'] as String,
      coordinates: Coordinates.fromJson(json['coordinates']),
      timezone: TimeZone.fromJson(json['TimeZone']),
    );
  }

  Map<String, dynamic> toJson() => {
        'street': street.toJson(),
        'city': city,
        'state': state,
        'country': country,
        'postcode': postcode,
        'coordinates': coordinates.toJson(),
        'timezone': timezone.toJson(),
      };

  @override
  String toString() {
    return toJson().toString();
  }
}

class Dob {
  DateTime date;
  int age;

  Dob({this.date, this.age});

  factory Dob.fromJson(Map<String, dynamic> json) {
    return Dob(
      date: json['date'] as DateTime,
      age: json['age'] as int,
    );
  }

  Map<String, dynamic> toJson() => {
        'date': date,
        'age': age,
      };

  @override
  String toString() {
    return toJson().toString();
  }
}

class Picture {
  String large;
  String medium;
  String thumnail;

  Picture({this.large, this.medium, this.thumnail});

  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      large: json['large'] as String,
      medium: json['medium'] as String,
      thumnail: json['thumnail'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'large': large,
        'medium': medium,
        'thumnail': thumnail,
      };

  @override
  String toString() {
    return toJson().toString();
  }
}

class Response {
  String gender;
  Name name;
  Location location;
  String email;
  Dob dob;
  String phone;
  String cell;
  Picture picture;

  Response({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.dob,
    this.cell,
    this.phone,
    this.picture,
  });

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      gender: json['gender'] as String,
      name: Name.fromJson(json['name']),
      location: Location.fromJson(json['location']),
      email: json['email'] as String,
      dob: Dob.fromJson(json['dob']),
      phone: json['phone'] as String,
      cell: json['cell'] as String,
      picture: Picture.fromJson(json['picture']),
    );
  }

  Map<String, dynamic> toJson() => {
        'gender': gender,
        'name': name.toJson(),
        'location': location.toJson(),
        'email': email,
        'dob': dob.toJson(),
        'phone': phone,
        'cell': cell,
        'picture': picture,
      };

  @override
  String toString() {
    return toJson().toString();
  }
}

class Result {
  List<Response> responses;

  Result({this.responses});

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
        responses: (json['results'] as List).map((e) {
      return Response.fromJson(e);
    }).toList());
  }

  Map<String, dynamic> toJson() => {
        'results': responses.map((e) {
          return e.toJson();
        })
      };

  @override
  String toString() {
    return toJson().toString();
  }
}
