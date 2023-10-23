class Character {
  final int? id;
  final String? name;
  final String? species;
  final String? type;
  final String? gender;
  final Map<String,dynamic>? origin;
  final Map<String,dynamic>? location;
  final String? image;
  final List<dynamic>? episode;
  final String? url;
  final String? created;

  const Character({
    required this.id,
    required this.name,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'] as int?,
      name: json['name'] as String?,
      species: json['species'] as String?,
      type: json['type'] as String?,
      gender: json['gender'] as String?,
      origin: json['origin'] as Map<String,dynamic>?,
      location: json['location'] as Map<String,dynamic>?,
      image: json['image'] as String?,
      episode: json['episode'] as List<dynamic>?,
      url: json['url'] as String?,
      created: json['created'] as String?,
    );
  }

  static List<Map<String, dynamic>> fromJsonList(List<dynamic> jsonList) {
    List<Map<String, dynamic>> characters = [];
    int cont = 0;
    for (var jsonData in jsonList) {
      final x = Character.fromJson(jsonData);
      cont++;
      characters.add({
        "id": x.id,
        "name": x.name,
        "species": x.species,
        "type": x.type,
        "gender": x.gender,
        "origin": x.origin,
        "location": x.location,
        "image": x.image,
        "episode": x.episode,
        "url": x.url,
        "created": x.created,
      });
      if (cont == 5) {
        break;
      }
    }
    return characters;
  }
}
