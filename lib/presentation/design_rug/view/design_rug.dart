import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rug_demo/global/resource/app_assets.dart';
import 'package:rug_demo/global/resource/app_colors.dart';
import 'package:rug_demo/global/resource/app_dimensions.dart';
import 'package:rug_demo/global/resource/app_styles.dart';
import 'package:rug_demo/models/rug/rug_dummy_model.dart';
import 'package:rug_demo/models/rug/shape_model.dart';
import 'package:rug_demo/presentation/common_widgets/custom_scaffold_layout.dart';
import 'package:rug_demo/presentation/common_widgets/primary_button.dart';
import 'package:rug_demo/presentation/common_widgets/secondary_button.dart';
import 'package:rug_demo/presentation/design_rug/view/widgets/material_selector.dart';
import 'package:rug_demo/presentation/design_rug/view/widgets/shape_selector.dart';

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
      appbarTitle: 'Design your Own Rug',
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Step 1: Upload your Digital Art',
                style: AppStyles.normalBoldTextWithColor(Colors.black),
              ),
              normalSpacer,
              const _UploadPicture(),
              normalSpacer,
              Text(
                'Select Rug Shape',
                style: AppStyles.normalBoldTextWithColor(Colors.black),
              ),
              ShapeSelector(list: shapesForRugs, onSelect: (v) {}),
              normalSpacer,
              const _SizeSelector(),
              normalSpacer,
              Text(
                'Select Rug Material',
                style: AppStyles.normalBoldTextWithColor(Colors.black),
              ),
              minimumSpacer,
              MaterialSelector(
                images: [
                  staticRugs[9].image,
                  staticRugs[1].image,
                  staticRugs[0].image,
                  staticRugs[13].image,
                  staticRugs[6].image,
                ],
                onSelect: (v) {},
              ),
              normalSpacer,
              const _PriceContainer(price: 9499),
              normalSpacer,
              Row(
                children: [
                  Flexible(
                    child: SecondaryButton(
                      label: 'Preview Design',
                      height: 56,
                      
                      onPressed: () {},
                    ),
                  ),
                  normalSpacer,
                  Flexible(
                      child: PrimaryButton(
                    label2: 'Add to cart',
                    label: '',
                    color: AppColors.primaryColor,
                    onPressed: () {},
                    height: 56,
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _UploadPicture extends StatefulWidget {
  const _UploadPicture();

  @override
  State<_UploadPicture> createState() => _UploadPictureState();
}

class _UploadPictureState extends State<_UploadPicture> {
  XFile? image;

  void _checkPermission(BuildContext context) async {
    print("object");
    // FocusScope.of(context).requestFocus(FocusNode());
    Map<Permission, PermissionStatus> statues = await [
      Permission.camera,
      Permission.storage,
      Permission.photos
    ].request();
    PermissionStatus? statusCamera = statues[Permission.camera];
    PermissionStatus? statusStorage = statues[Permission.storage];
    PermissionStatus? statusPhotos = statues[Permission.photos];
    bool isGranted = statusCamera == PermissionStatus.granted &&
        statusStorage == PermissionStatus.granted &&
        statusPhotos == PermissionStatus.granted;
    if (isGranted) {
      pickImage();
    }
    bool isPermanentlyDenied =
        statusCamera == PermissionStatus.permanentlyDenied ||
            statusStorage == PermissionStatus.permanentlyDenied ||
            statusPhotos == PermissionStatus.permanentlyDenied;
  }

  Future pickImage() async {
    try {
      image = await ImagePicker().pickImage(source: ImageSource.gallery);
      // if (image == null) return;
      // final imageTemp = File(image.path);
      // await uploadFile(image);
      // this.image = imageTemp;
      // setState(() {
      //   this.image = imageTemp;
      // });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          width: double.maxFinite,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.primaryColor.withAlpha(60)),
          child: Column(
            children: [
              SvgPicture.asset(
                AppAssets.uploadPicture,
                height: 40,
                width: 100,
              ),
              normalSpacer,
              Text(
                'Step 1: Upload your Digital Art',
                style: AppStyles.normalBoldTextWithColor(Colors.black),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          child: PrimaryButton(
            label2: 'Choose file',
            label: '',
            onPressed: () async {
              _checkPermission(context);
            },
            color: AppColors.primaryColor,
            height: 30,
          ),
        )
      ],
    );
  }
}

class _SizeSelector extends StatelessWidget {
  const _SizeSelector();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Flexible(
              flex: 10,
              child: Text(
                'Select Rug Size',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Container(
              color: Colors.grey,
              width: 0.5,
              height: 40,
            ),
            Flexible(
                flex: 3,
                child: Text(
                  '12x14 cm',
                  style: AppStyles.regularBoldTextWithColor(Colors.black),
                )),
            const Flexible(
                flex: 1,
                child: Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.primaryColor,
                  size: 40,
                ))
          ],
        ),
      ),
    );
  }
}

// class _MaterialSelector extends StatefulWidget {
//   const _MaterialSelector();
//   @override
//   State<_MaterialSelector> createState() => __MaterialSelectorState();
// }
// class __MaterialSelectorState extends State<_MaterialSelector> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             for (int i = 0; i < 4; i++)
//               Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(2.0),
//                     child: ClipRRect(
//                         borderRadius: BorderRadius.circular(12),
//                         child: CachedNetworkImage(
//                           fit: BoxFit.fitHeight,
//                           imageUrl: staticRugs[i].image,
//                           height: 70,
//                           width: 70,
//                         )),
//                   ),
//                   const Text('Sample')
//                 ],
//               )
//           ],
//         )
//       ],
//     );
//   }
// }

class _PriceContainer extends StatelessWidget {
  final double price;
  const _PriceContainer({required this.price});

  @override
  Widget build(BuildContext context) {
    final indianRupeesFormat = NumberFormat.currency(
      name: "INR",
      locale: 'en_IN',
      decimalDigits: 0,
      symbol: '₹ ',
    );
    var formattedPrice = indianRupeesFormat.format(price);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
          color: AppColors.primaryColor.withAlpha(50),
          borderRadius: BorderRadius.circular(14)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          'Your Rug Price',
          style: AppStyles.normalBasicTextWithColor(Colors.black),
        ),
        Text.rich(
          TextSpan(
            text: '',
            style: const TextStyle(color: AppColors.primaryColor),
            children: <InlineSpan>[
              TextSpan(
                text: formattedPrice,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
