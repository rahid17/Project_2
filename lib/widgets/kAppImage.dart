import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:project_2/utils/img_url.dart';

class KAppImage extends StatelessWidget {
  const KAppImage(
      {super.key, required this.imageUrl, this.height = 100, this.width = 200});
  final String imageUrl;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        )),
      ),
      placeholder: (context, url) => Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(KLoadingImg)),
        ),
      ),
      errorWidget: (context, url, error) => Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(KErrorImg)),
        ),
      ),
    );
  }
}
