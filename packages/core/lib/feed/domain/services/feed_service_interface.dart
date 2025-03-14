import 'package:bluesky/app_bsky_feed_defs.dart';
import 'package:core/common/failures/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class FeedServiceInterface {
  Future<Either<Failure, List<PostView>>> getPosts();
  Future<Either<Failure, void>> likePost(String postCid);
  Future<Either<Failure, void>> unlikePost(String postCid);
  Future<Either<Failure, void>> repostPost(String postCid);
  Future<Either<Failure, void>> unrepostPost(String postCid);
  Future<Either<Failure, void>> pinPost(String postCid);
  Future<Either<Failure, void>> unpinPost(String postCid);
  Future<Either<Failure, void>> addComment(String postCid, String text);
  Future<Either<Failure, void>> deleteComment(
      String postCid, String commentCid);
  Future<Either<Failure, void>> addReply(
      String postCid, String commentCid, String text);
  Future<Either<Failure, void>> deleteReply(
      String postCid, String commentCid, String replyCid);
  Future<Either<Failure, void>> addQuote(String postCid, String text);
  Future<Either<Failure, void>> deleteQuote(String postCid, String quoteCid);
  Future<Either<Failure, void>> addRepost(String postCid);
  Future<Either<Failure, void>> deleteRepost(String postCid);
  Future<Either<Failure, void>> deletePin(String postCid);
}
