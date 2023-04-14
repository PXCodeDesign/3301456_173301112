var trending = [
  {
    "id": 0,
    "name": "The Mandalorian",
    "image": "assets/the_mandalorian.jpg",
    "year": "2019-2023",
    "season": "3 sezon",
    "category": "Bİlim Kurgu, Aksiyon-Macera",
    "my_list": true,
    "video_id": "aOC8E8z_ifw",
    "notification_title": "Yeni İçerik"
  },
  {
    "id": 1,
    "name": "Breaking Bad",
    "image": "assets/breaking_bad.jpg",
    "year": "2008-2013",
    "season": "5 sezon",
    "category": "Drama",
    "my_list": false,
    "video_id": "aOC8E8z_ifw",
    "notification_title": "Yeni İçerik"
  },
  {
    "id": 2,
    "name": "Game of Thrones",
    "image": "assets/game_of_thrones.jpg",
    "year": "2011-2019",
    "season": "8 sezon",
    "category": "Drama, Gerilim, Aksiyon-Macera",
    "my_list": true,
    "video_id": "aOC8E8z_ifw",
    "notification_title": "Yeni İçerik"
  },
  {
    "id": 3,
    "name": "Avengers",
    "image": "assets/avengers.jpg",
    "year": "2012",
    "season": "",
    "category": "Bİlim Kurgu, Aksiyon-Macera",
    "my_list": true,
    "video_id": "aOC8E8z_ifw",
    "notification_title": "Şimdi Yayında"
  },
  {
    "id": 4,
    "name": "Avengers Endgame",
    "image": "assets/avengers_endgame.jpg",
    "year": "2019",
    "season": "",
    "category": "Bİlim Kurgu, Aksiyon-Macera",
    "my_list": false,
    "video_id": "aOC8E8z_ifw",
    "notification_title": "Yeni İçerik"
  },
  {
    "id": 5,
    "name": "Bloodshot: Durdurulamaz Güç",
    "image": "assets/bloodshot.jpg",
    "year": "2020",
    "season": "",
    "category": "Bİlim Kurgu, Aksiyon",
    "my_list": true,
    "video_id": "aOC8E8z_ifw",
    "notification_title": "Yeni İçerik"
  },
  {
    "id": 6,
    "name": "Hızlı ve Öfkeli 9",
    "image": "assets/hizli_ve_ofkeli_9.jpg",
    "year": "2021",
    "season": "",
    "category": "Aksiyon-Macera",
    "my_list": true,
    "video_id": "aOC8E8z_ifw",
    "notification_title": "Yeni İçerik"
  },
  {
    "id": 7,
    "name": "Batman ve Superman: Adaletin Şafağı",
    "image": "assets/batman_ve_superman.jpg",
    "year": "2016",
    "season": "",
    "category": "Aksiyon-Macera",
    "my_list": false,
    "video_id": "aOC8E8z_ifw",
    "notification_title": "Yeni İçerik"
  },
];

class Model {
  int? id;
  String? name;
  String? image;
  String? year;
  String? season;
  String? category;
  bool? mylist;
  String? videoId;
  bool isNotificationEnabled;
  String? notificationTitle;

  Model(
      {this.id,
      this.name,
      this.image,
      this.year,
      this.season,
      this.category,
      this.mylist,
      this.videoId,
      this.isNotificationEnabled = false,
      this.notificationTitle});

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      id: json["id"],
      name: json['name'],
      image: json['image'],
      year: json['year'],
      season: json['season'],
      category: json['category'],
      mylist: json["my_list"],
      videoId: json["video_id"],
      notificationTitle: json["notification_title"],
    );
  }

  void add(Model model) {}
}
