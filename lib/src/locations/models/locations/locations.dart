class Location {
  final int? id;
  final String? name;
  final String? type;
  final String? dimension;
  final List<dynamic>? residents;
  final String? url;
  final String? created;

  const Location({
    required this.id,
    required this.name,
    required this.type,
    required this.dimension,
    required this.residents,
    required this.url,
    required this.created,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      dimension: json['dimension'] as String?,
      residents: json['residents'] as List<dynamic>?,
      url: json['url'] as String?,
      created: json['created'] as String?,
    );
  }

  static List<Map<String, dynamic>> fromJsonList(List<dynamic> jsonList) {
    List<Map<String, dynamic>> characters = [];
    int cont = 0;
    for (var jsonData in jsonList) {
      final x = Location.fromJson(jsonData);
      cont++;
      characters.add({
        "id": x.id,
        "name": x.name,
        "type": x.type,
        "dimension": x.dimension,
        "residents": x.residents,
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
