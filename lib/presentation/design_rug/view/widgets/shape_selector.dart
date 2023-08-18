import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/global/resource/app_dimensions.dart';
import 'package:rug_demo/models/rug/shape_model.dart';

class ShapeSelector extends StatefulWidget {
  final List<ShapeModel> list;

  final void Function(ShapeModel?) onSelect;
  const ShapeSelector({super.key, required this.list, required this.onSelect});

  @override
  State<ShapeSelector> createState() => _ShapeSelectorState();
}

class _ShapeSelectorState extends State<ShapeSelector> {
  bool isSelected = false;

  bool disabled = false;
  ShapeModel? selected;
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
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.all(4),
                    padding: const EdgeInsets.all(AppDimentions.px12),
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor.withAlpha(50),
                        border: Border.all(
                          color: (selected == widget.list[i])
                              ? AppColors.primaryColor
                              : AppColors.whiteColor,
                        ),
                        borderRadius: BorderRadius.circular(14)),
                    child: Column(
                      children: [
                        Container(
                          decoration: widget.list[i].boxDecoration,
                          height: widget.list[i].height,
                          width: widget.list[i].width,
                        ),
                      ],
                    )),
                Text(widget.list[i].name)
              ],
            ),
          )
      ],
    );
  }
}
