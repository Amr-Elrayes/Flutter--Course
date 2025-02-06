class NewsModel {
  final String? imglink;
  final String title;
  final String? subtitle;

  NewsModel({required this.imglink, required this.title, required this.subtitle});



  factory NewsModel.fromJson(json)
  {
    return NewsModel(imglink: json['image_url'], title: json['title'], subtitle: json['description']);
  }
}
