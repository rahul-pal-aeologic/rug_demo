import 'package:flutter/material.dart';
import 'package:rug_demo/presentation/common_widgets/custom_scaffold_layout.dart';

class DesignRug extends StatefulWidget {
  static const String routeName = '/designRug';
  const DesignRug({super.key});

  @override
  State<DesignRug> createState() => _DesignRugState();
}

class _DesignRugState extends State<DesignRug> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldLayout(
      showAppbar: true,
      child: Column(),
      appbarTitle: 'Design your Own Rug',
    );
  }
}
