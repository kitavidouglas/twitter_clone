import 'package:cloud_firestore/cloud_firestore.dart';

class DBService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Fetch posts
  Future<List<Map<String, dynamic>>> fetchPosts() async {
    try {
      QuerySnapshot snapshot = await _firestore.collection('posts').get();
      return snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    } catch (e) {
      throw Exception('Error fetching posts: $e');
    }
  }

  // Fetch user profile
  Future<Map<String, dynamic>> fetchUserProfile(String userId) async {
    try {
      DocumentSnapshot doc = await _firestore.collection('users').doc(userId).get();
      return doc.data() as Map<String, dynamic>;
    } catch (e) {
      throw Exception('Error fetching user profile: $e');
    }
  }
}
