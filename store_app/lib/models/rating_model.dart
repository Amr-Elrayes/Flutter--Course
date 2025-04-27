class RatingModel {
  final num rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(JsonData) {
    return RatingModel(rate: JsonData['rate'], count: JsonData['count']);
  }
}
