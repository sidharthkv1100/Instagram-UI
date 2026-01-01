import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/post_model.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createPost(PostModel post) async {
    await _firestore.collection('posts').add(post.toMap());
  }

  Stream<List<PostModel>> getPosts() {
    return _firestore
        .collection('posts')
        .orderBy('time', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return PostModel.fromSnapshot(doc);
      }).toList();
    });
  }
}
