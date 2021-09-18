import 'package:dio/dio.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../core/core.dart';
import 'post_client.dart';

@Singleton(as: PostRepository)
class PostRepositoryImpl implements PostRepository {
  static final _logger = Logger('PostRepositoryImpl');

  final PostClient _postClient;

  const PostRepositoryImpl(this._postClient);

  @override
  Future<Post> createPost(final PostCreationRequest request) async {
    try {
      _logger.finer('Creating post $request...');
      var post = await _postClient.createPost(request);
      _logger.fine('Done creating post $request.');
      return post;
    } on DioError catch (err, trace) {
      _logger.severe('Unable to create post', err, trace);
      throw err.toApp;
    }
  }

  @override
  Future<Post> getPost(final String postId) async {
    try {
      _logger.finer('Getting post $postId...');
      var post = await _postClient.getPost(postId);
      _logger.fine('Done getting post $postId.');
      return post;
    } on DioError catch (err, trace) {
      _logger.severe('Unable to get post', err, trace);
      throw err.toApp;
    }
  }

  @override
  Future<Post> searchPosts(String userId) async {
    try {
      _logger.finer('Searching post by userId:"$userId"...');
      var post = await _postClient.getPost(userId);
      _logger.fine('Done searching post by userId:"$userId".');
      return post;
    } on DioError catch (err, trace) {
      _logger.severe('Unable to search post', err, trace);
      throw err.toApp;
    }
  }
}
