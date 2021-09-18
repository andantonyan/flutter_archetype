import 'package:dio/dio.dart';
import 'package:flutter_archetype/domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:retrofit/retrofit.dart';

import '../core/config.dart';
import '../core/dio_client.dart';

part 'post_client.g.dart';

@singleton
@RestApi()
abstract class PostClient {
  @factoryMethod
  factory PostClient(DioClient dioClient) {
    return _PostClient(dioClient.dio, baseUrl: join(EnvConfig.apiBaseUrl, 'api', 'posts'));
  }

  @POST('/')
  Future<Post> createPost(@Body() PostCreationRequest request);

  @POST('/{id}')
  Future<Post> getPost(@Path("id") String id);
}
