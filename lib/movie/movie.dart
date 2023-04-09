var trending = [
  {
    "name": "The Mandalorian",
    "image": "assets/the_mandalorian.jpg",
    "year": "2019-2023",
    "season": "3 sezon",
    "category": "Bİlim Kurgu, Aksiyon-Macera"
  },
  {
    "name": "Breaking Bad",
    "image": "assets/breaking_bad.jpg",
    "year": "2008-2013",
    "season": "5 sezon",
    "category": "Drama"
  },
  {
    "name": "Game of Thrones",
    "image": "assets/game_of_thrones.jpg",
    "year": "2011-2019",
    "season": "8 sezon",
    "category": "Drama, Gerilim, Aksiyon-Macera"
  },
];

class Model {
  String? name;
  String? image;
  String? year;
  String? season;
  String? category;

  Model({this.name, this.image, this.year, this.season, this.category});

  Model.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    year = json['year'];
    season = json['season'];
    category = json['category'];
  }
}
