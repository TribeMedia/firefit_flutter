import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

class MediaHomeScreenPage extends StatelessWidget {
  const MediaHomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader(
        title: const Text('Media Home'),
      ),
      contentPad: false,
      content: Column(
        children: [
          // Carousel for featured content
          CarouselSlider(
            options: CarouselOptions(height: 200.0, autoPlay: true),
            items: [
              // Example card items
              _buildCarouselCard(
                  'Video Title', 'Subtitle', 'assets/video_background.jpg'),
              _buildCarouselCard(
                  'Blog Title', 'Subtitle', 'assets/blog_background.jpg'),
              _buildCarouselCard(
                  'Podcast Title', 'Subtitle', 'assets/podcast_background.jpg'),
            ],
          ),
          // Media feed
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Example item count
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.article),
                  title: Text('Media Item $index'),
                  subtitle: Text('Description of media item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCarouselCard(String title, String subtitle, String imagePath) {
    return Card(
      child: Stack(
        children: [
          Image.asset(imagePath, fit: BoxFit.cover, width: double.infinity),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Text(subtitle,
                    style: TextStyle(color: Colors.white, fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
