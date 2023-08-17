import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/global/resource/app_dimensions.dart';
import 'package:rug_demo/models/rug/color_model.dart';

class ColorSelector extends StatefulWidget {
  final List<ColorModel> list;

  final void Function(ColorModel?) onSelect;
  const ColorSelector({super.key, required this.list, required this.onSelect});

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  bool isSelected = false;

  bool disabled = false;
  ColorModel? selected;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (int i = 0; i < widget.list.length; i++)
          InkWell(
            onTap: () {
              selected = widget.list[i];
              print("object");
              print(widget.list[i]);
              setState(() {});
              try {
                widget.onSelect(selected);
              } catch (e, stacktrace) {
                print("$e");
                print(stacktrace);
              }
            },
            child: Container(
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.all(AppDimentions.px2),
              decoration: BoxDecoration(
                  // color: (selected == widget.list[i])
                  //     ? AppColors.primaryColor
                  //     : AppColors.whiteColor,
                  border: Border.all(
                    color: (selected == widget.list[i])
                        ? AppColors.greyColor
                        : AppColors.whiteColor,
                  ),
                  borderRadius: BorderRadius.circular(100)),
              child: Column(
                children: [

                  CircleAvatar(maxRadius: 10,
                    backgroundColor: widget.list[i].color,
                  )

                ],
              ),
            ),
          )
      ],
    );
  }
}
