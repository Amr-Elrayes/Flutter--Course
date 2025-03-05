import '../constants.dart';

class MessageModel {
  final String content;
  final String id;
  MessageModel(this.content , this.id);

  factory MessageModel.fromJson( jsonData) {
    return MessageModel(jsonData[Kcontent] , jsonData[Kid]);
  }
}
