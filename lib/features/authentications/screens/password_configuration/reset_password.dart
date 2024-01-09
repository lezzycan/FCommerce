import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_eccommerce/utils/constants/image_strings.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(LSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image:
                    const AssetImage(LImageStrings.deliveredEmailIllustration),
                width: LHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: LSizes.spaceBtwSections,
              ),
              Text(
                LTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: LSizes.spaceBtwItems,
              ),
              Text(
                LTexts.changeYourPasswordsubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: LSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(LTexts.done)),
              ),
              const SizedBox(
                height: LSizes.spaceBtwItems,
              ),
              TextButton(
                  onPressed: () {}, child: const Text(LTexts.resendEmail))
            ],
          ),
        ),
      ),
    );
  }
}
