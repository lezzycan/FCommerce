import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_eccommerce/common/success_screen/success_screen.dart';
import 'package:my_eccommerce/features/authentications/screens/login/login.dart';
import 'package:my_eccommerce/utils/constants/image_strings.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(LSizes.defaultSpace),
        child: Column(
          children: [
            Image(
              image: const AssetImage(
                LImageStrings.deliveredEmailIllustration,
              ),
              width: LHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: LSizes.spaceBtwSections,
            ),

            /// Title & Subtitle
            Text(
              LTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: LSizes.spaceBtwItems,
            ),
            Text(
              'Lezzycan10@gmail.com',
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: LSizes.spaceBtwItems,
            ),
            Text(
              LTexts.confirmEmailSubTilte,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: LSizes.spaceBtwSections,
            ),

            /// Buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() =>  SuccessScreen(
                    title: LTexts.yourAccountCreatedTitle,
                    image: LImageStrings.staticSuccessIllustration,
                    onPressed: ()=> Get.to(() => const LoginScreen()), subTitle: LTexts.yourAccountCreatedsubTitle,
                  )),
                  child: const Text(LTexts.tContinue)),
            ),
            const SizedBox(
                height: LSizes.spaceBtwItems,
              ),
              TextButton(
                  onPressed: () {}, child: const Text(LTexts.resendEmail))
          ],
        ),
      )),
    );
  }
}
