import 'package:delites/models/tag.dart';
import 'package:flutter/cupertino.dart';

class TagService extends ChangeNotifier {
  List<Tag> _items = [
    Tag(
        id: 'tag1',
        name: 'Foods',
        logoUrl:
            'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/meat-on-bone_1f356.png',
        bgColor: '884DFF'),
    Tag(
        id: 'tag2',
        name: 'Fruit',
        logoUrl:
            'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/lemon_1f34b.png',
        bgColor: '0095FF'),
    Tag(
        id: 'tag3',
        name: 'Healty',
        logoUrl:
            'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/four-leaf-clover_1f340.png',
        bgColor: '64BA02'),
    Tag(
        id: 'tag4',
        name: 'Drink',
        logoUrl:
            'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/beer-mug_1f37a.png',
        bgColor: 'FF9D2B')
  ];

  List<Tag> findAll() {
    //return [..._items];
    return _items;
  }

  Tag findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }
}
