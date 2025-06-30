import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleImage extends StatelessWidget {
  final String image;

  const ArticleImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CachedNetworkImage(
        imageUrl: image,
        height: 130.h,
        width: double.infinity,
        fit: BoxFit.cover,
        placeholder:
            (context, url) => const Center(
              child: CircularProgressIndicator(color: Colors.blue),
            ),
        errorWidget:
            (context, url, error) => Image.asset(
              'assets/images/firstarticlepic.jpg',
              height: 130.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
      ),
    );
  }
}
