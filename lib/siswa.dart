import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Siswa {
  final String name;
  final String address;
  Siswa({
    required this.name,
    required this.address,
  });
 

  Siswa copyWith({
    String? name,
    String? address,
  }) {
    return Siswa(
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'address': address,
    };
  }

  factory Siswa.fromMap(Map<String, dynamic> map) {
    return Siswa(
      name: map['name'] as String,
      address: map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Siswa.fromJson(String source) => Siswa.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Siswa(name: $name, address: $address)';

  @override
  bool operator ==(covariant Siswa other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.address == address;
  }

  @override
  int get hashCode => name.hashCode ^ address.hashCode;
}
