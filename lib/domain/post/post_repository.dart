import 'post_creation_request.dart';
import 'post_model.dart';

abstract class PostRepository {
  Future<Post> createPost(PostCreationRequest request);

  Future<Post> getPost(String postId);

  Future<Post> searchPosts(String userId);
}
