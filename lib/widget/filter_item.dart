import 'package:flutter/material.dart';

@immutable
class FilterItem extends StatelessWidget {
  const FilterItem({
    Key? key,
    required this.color,
    this.onFilterSelected,
  }) : super(key: key); // Properly use 'super.key' for null safety

  final Color color;
  final VoidCallback? onFilterSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFilterSelected, // Ensure onFilterSelected is not null
      child: AspectRatio(
        aspectRatio: 1.0, // Ensures the widget remains square
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipOval(
            child: Image.network(
              'https://docs.flutter.dev/cookbook/img-files/effects/instagram-buttons/millennial-texture.jpg',
              color: color.withOpacity(0.5), // Apply color filter with opacity
              colorBlendMode: BlendMode.hardLight, // Apply color blend mode
              fit: BoxFit
                  .cover, // Ensure the image is properly scaled inside the circle
            ),
          ),
        ),
      ),
    );
  }
}
