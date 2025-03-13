import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../domain/models/feed_post.dart';

class FeedItemWidget extends StatelessWidget {
  final FeedPost post;
  final VoidCallback? onLike;
  final VoidCallback? onRepost;
  final VoidCallback? onReply;
  final VoidCallback? onTap;

  const FeedItemWidget({
    super.key,
    required this.post,
    this.onLike,
    this.onRepost,
    this.onReply,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: Theme.of(context).dividerColor.withOpacity(0.1),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Author info row
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Avatar
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: post.author.avatar != null
                        ? NetworkImage(post.author.avatar!)
                        : null,
                    child: post.author.avatar == null
                        ? Text(post.author.displayName[0])
                        : null,
                  ),
                  const SizedBox(width: 10),
                  // Author name and handle
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.author.displayName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '@${post.author.handle}',
                          style: TextStyle(
                            color: Theme.of(context).hintColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Timestamp
                  Text(
                    timeago.format(post.createdAt),
                    style: TextStyle(
                      color: Theme.of(context).hintColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),

              // Post content
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  post.text,
                  style: const TextStyle(fontSize: 16),
                ),
              ),

              // Image gallery if post has images
              if (post.images.isNotEmpty) ...[
                const SizedBox(height: 10),
                _buildImageGallery(),
                const SizedBox(height: 10),
              ],

              // Action buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Reply button
                  _buildActionButton(
                    icon: Icons.chat_bubble_outline,
                    count: post.replyCount,
                    onTap: onReply,
                  ),
                  // Repost button
                  _buildActionButton(
                    icon: post.isReposted
                        ? Icons.repeat_rounded
                        : Icons.repeat_outlined,
                    count: post.repostCount,
                    color: post.isReposted ? Colors.green : null,
                    onTap: onRepost,
                  ),
                  // Like button
                  _buildActionButton(
                    icon: post.isLiked ? Icons.favorite : Icons.favorite_border,
                    count: post.likeCount,
                    color: post.isLiked ? Colors.red : null,
                    onTap: onLike,
                  ),
                  // Share button
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share_outlined),
                    splashRadius: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required int count,
    Color? color,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: color,
            ),
            const SizedBox(width: 4),
            Text(
              count > 0 ? count.toString() : '',
              style: TextStyle(
                color: color ?? Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageGallery() {
    if (post.images.isEmpty) return const SizedBox.shrink();

    if (post.images.length == 1) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          post.images.first,
          fit: BoxFit.cover,
        ),
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: post.images.length > 2 ? 2 : post.images.length,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemCount: post.images.length > 4 ? 4 : post.images.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                post.images[index],
                fit: BoxFit.cover,
              ),
              if (index == 3 && post.images.length > 4)
                Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: Text(
                      '+${post.images.length - 4}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
