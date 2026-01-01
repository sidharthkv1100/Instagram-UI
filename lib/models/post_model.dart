import 'package:cloud_firestore/cloud_firestore.dart';

class PostModel {
  final String postId;
  final String uid;
  final String imageUrl;
  final String caption;
  final Timestamp time;

  PostModel({
    required this.postId,
    required this.uid,
    required this.imageUrl,
    required this.caption,
    required this.time,
  });

  factory PostModel.fromSnapshot(DocumentSnapshot snap) {
    final data = snap.data() as Map<String, dynamic>;
    return PostModel(
      postId: snap.id,
      uid: data['uid'],
      imageUrl: data['imageUrl'],
      caption: data['caption'],
      time: data['time'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'imageUrl': imageUrl,
      'caption': caption,
      'time': time,
    };
  }
}
