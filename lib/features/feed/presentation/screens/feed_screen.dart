import 'package:firefit/features/feed/domain/models/feed_post.dart';
import 'package:firefit/features/feed/presentation/widgets/feed_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // In a real app, this would come from a provider
    final demoFeedPosts = _getDemoPosts();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Feed'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // In a real app, you would refresh the feed here
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Refreshing feed...')),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: demoFeedPosts.length,
        itemBuilder: (context, index) {
          final post = demoFeedPosts[index];
          return FeedItemWidget(
            post: post,
            onLike: () {
              // In a real app, you would implement like functionality
              debugPrint('Liked post: ${post.id}');
            },
            onRepost: () {
              // In a real app, you would implement repost functionality
              debugPrint('Reposted post: ${post.id}');
            },
            onReply: () {
              // In a real app, you would implement reply functionality
              debugPrint('Replying to post: ${post.id}');
            },
            onTap: () {
              // In a real app, you would navigate to the post detail
              debugPrint('Tapped on post: ${post.id}');
            },
          );
        },
      ),
    );
  }

  // Generate demo data for preview purposes
  List<FeedPost> _getDemoPosts() {
    return [
      FeedPost(
        id: '1',
        text:
            'Just released a new version of my app! Check it out and let me know what you think. #flutter #development',
        createdAt: DateTime.now().subtract(const Duration(minutes: 15)),
        likeCount: 24,
        repostCount: 5,
        replyCount: 3,
        author: FeedPostAuthor(
          did: 'did:plc:abcdef123456',
          handle: 'flutter_dev',
          displayName: 'Flutter Developer',
          avatar: 'https://randomuser.me/api/portraits/men/1.jpg',
        ),
        images: [
          'https://picsum.photos/500/300?random=1',
        ],
      ),
      FeedPost(
        id: '2',
        text: 'Beautiful day for hiking! 🏔️ #outdoors #nature',
        createdAt: DateTime.now().subtract(const Duration(hours: 2)),
        likeCount: 152,
        repostCount: 12,
        replyCount: 8,
        isLiked: true,
        author: FeedPostAuthor(
          did: 'did:plc:xyz789',
          handle: 'nature_lover',
          displayName: 'Nature Enthusiast',
          avatar: 'https://randomuser.me/api/portraits/women/2.jpg',
        ),
        images: [
          'https://picsum.photos/500/300?random=2',
          'https://picsum.photos/500/300?random=3',
          'https://picsum.photos/500/300?random=4',
        ],
      ),
      FeedPost(
        id: '3',
        text:
            'Working on a new feature for my BlueSky client. The API is coming along nicely!',
        createdAt: DateTime.now().subtract(const Duration(hours: 5)),
        likeCount: 87,
        repostCount: 21,
        replyCount: 14,
        isReposted: true,
        author: FeedPostAuthor(
          did: 'did:plc:123abc',
          handle: 'coder',
          displayName: 'Coding Enthusiast',
          avatar: 'https://randomuser.me/api/portraits/men/3.jpg',
        ),
      ),
      FeedPost(
        id: '4',
        text:
            'Just finished reading "Clean Architecture" - highly recommend for all developers!',
        createdAt: DateTime.now().subtract(const Duration(days: 1)),
        likeCount: 45,
        repostCount: 8,
        replyCount: 23,
        isLiked: true,
        author: FeedPostAuthor(
          did: 'did:plc:efg456',
          handle: 'book_worm',
          displayName: 'Book Enthusiast',
          avatar: 'https://randomuser.me/api/portraits/women/4.jpg',
        ),
      ),
      FeedPost(
        id: '5',
        text: 'Check out this amazing sunset! 🌅',
        createdAt: DateTime.now().subtract(const Duration(days: 2)),
        likeCount: 246,
        repostCount: 76,
        replyCount: 18,
        author: FeedPostAuthor(
          did: 'did:plc:hij789',
          handle: 'photo_pro',
          displayName: 'Photography Pro',
          avatar: 'https://randomuser.me/api/portraits/men/5.jpg',
        ),
        images: [
          'https://picsum.photos/500/300?random=5',
          'https://picsum.photos/500/300?random=6',
          'https://picsum.photos/500/300?random=7',
          'https://picsum.photos/500/300?random=8',
          'https://picsum.photos/500/300?random=9',
        ],
      ),
    ];
  }
}
