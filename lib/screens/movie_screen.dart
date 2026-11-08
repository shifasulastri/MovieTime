import 'package:flutter/material.dart';

import '../data/movie_data.dart';
import '../widgets/featured_carousel.dart';
import '../widgets/movie_section.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Header aplikasi
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Text(
                      'M',
                      style: TextStyle(
                        color: Color(0xFFE50914),
                        fontSize: 38,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(width: 1),
                    Text(
                      'ovieTime',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Featured movie carousel
              FeaturedCarousel(
                movies: movieList.take(4).toList(),
              ),

              const SizedBox(height: 28),

              // Trending movies
              MovieSection(
                title: 'Trending',
                movies: movieList,
              ),

              const SizedBox(height: 24),

              // Popular movies
              MovieSection(
                title: 'Popular',
                movies: movieList.reversed.toList(),
              ),

              const SizedBox(height: 24),

              // Top rated movies
              MovieSection(
                title: 'Top Rated',
                movies: movieList,
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}