import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rug_demo/global/resource/app_assets.dart';

class MaterialSelector extends StatefulWidget {
  final List<String> images;

  final void Function(String?) onSelect;
  const MaterialSelector(
      {super.key, required this.images, required this.onSelect});

  @override
  State<MaterialSelector> createState() => _MaterialSelectorState();
}

class _MaterialSelectorState extends State<MaterialSelector> {
  bool isSelected = false;

  bool disabled = false;
  String? selected;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (int i = 0; i < widget.images.length; i++)
          InkWell(
              onTap: () {
                selected = widget.images[i];
                print("object");
                print(widget.images[i]);
                setState(() {});
                try {
                  widget.onSelect(selected);
                } catch (e, stacktrace) {
                  print("$e");
                  print(stacktrace);
                }
              },
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: CachedNetworkImage(
                              alignment: Alignment.center,
                              fit: BoxFit.fitHeight,
                              imageUrl: widget.images[i],
                              height: 70,
                              width: 70,
                            )),
                      ),
                      (selected == widget.images[i])
                          ? Container(
                              margin: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  color: Colors.black38,
                                  borderRadius: BorderRadius.circular(12)),
                              padding: const EdgeInsets.all(20),
                              width: 72,
                              height: 72,
                              child: SvgPicture.asset(
                                AppAssets.tick,
                              ))
                          : const SizedBox()
                    ],
                  ),
                  const Text('Sample')
                ],
              ))
      ],
    );
  }
}
