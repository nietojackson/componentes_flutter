import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomeCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomeCardType2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 20,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
              placeholder: const AssetImage('assets/loading/jar-loading.gif'),
              image: NetworkImage(imageUrl)),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 20, bottom: 20),
              child: Text(name!),
            )
        ],
      ),
    );
  }
}
