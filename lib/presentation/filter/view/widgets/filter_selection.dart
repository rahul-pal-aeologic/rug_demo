import 'package:flutter/material.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/models/rug/filter_model.dart';

class FilterSelection extends StatefulWidget {
  final List<FilterModel> list;

  final void Function(FilterModel?) onSelect;
  const FilterSelection(
      {super.key, required this.list, required this.onSelect});

  @override
  State<FilterSelection> createState() => _FilterSelectionState();
}

class _FilterSelectionState extends State<FilterSelection> {
  FilterModel? selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < widget.list.length; i++)
          InkWell(
            onTap: () {
              widget.list[i].isSelected = !widget.list[i].isSelected;

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
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 8, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    child: Image.asset(
                      (widget.list[i].isSelected)
                          ? "assets/bluecircle.png"
                          : "assets/greycircle.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    widget.list[i].filterName,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}
