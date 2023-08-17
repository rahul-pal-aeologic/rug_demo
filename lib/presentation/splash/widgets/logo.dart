import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_styles.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const Spacer(),
            Image.network('https://media.istockphoto.com/id/1443828576/vector/vector-design-template-for-social-media-teamwork.webp?s=2048x2048&w=is&k=20&c=bwZHynfmsYCJNv81Ytkrlnub3waezdpcKZ6qUZXcUsY='),
            const Spacer(),
            Text(
              'TAP TO CONTINUE',
              style: AppStyles.mediumBoldTextWithColor(
                  color: Colors.white, ellipsis: TextOverflow.clip),
            )
          ],
        ),
      ],
    );
  }
}
