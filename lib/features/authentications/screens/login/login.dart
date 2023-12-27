import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_eccommerce/common/styles/l_spacing_style.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/image_strings.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = LHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: LSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      height: 150.h,
                      image: AssetImage(isDark
                          ? LImageStrings.lightAppLogo
                          : LImageStrings.darkAppLogo)),
                  Text(
                    LTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: LSizes.sm,
                  ),
                  Text(
                    LTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              //const SizedBox(height: LSizes.spaceBtwInputFields,),
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: LSizes.spaceBtwSections),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: LTexts.email),
                    ),
                    const SizedBox(
                      height: LSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: LTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash)),
                    ),
                    const SizedBox(
                      height: LSizes.spaceBtwInputFields / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            ),
                            const Text(LTexts.rememberMe)
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(LTexts.forgotPassword),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: LSizes.spaceBtwSections,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text(LTexts.signIn)),
                    ),
                    const SizedBox(height: LSizes.spaceBtwItems,),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(LTexts.createAccount)),
                    )
                  ],
                ),
              )),
              Row(
                children: [
                  Expanded(child: Divider(color: isDark ? LColors.darkGrey : LColors.grey,thickness: 0.5,)),
                  Text(LTexts.orSignInWith, style: Theme.of(context).textTheme.labelMedium,),
                  
                    Expanded(child: Divider(color: isDark ? LColors.darkGrey : LColors.grey,thickness: 0.5, ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
             Container(
              decoration: BoxDecoration(border: Border.all(color: LColors.grey), borderRadius: BorderRadius.circular(100)),
              child: IconButton(onPressed: (){}, icon: const Image(
                width: LSizes.iconMd,
                height: LSizes.iconMd,
                image: AssetImage(LImageStrings.googleLogo))),
             ),
             const SizedBox(width: LSizes.spaceBtwItems,),
               Container(
              decoration: BoxDecoration(border: Border.all(color: LColors.grey), borderRadius: BorderRadius.circular(100)),
              child: IconButton(onPressed: (){}, icon: const Image(
                width: LSizes.iconMd,
                height: LSizes.iconMd,
                image: AssetImage(LImageStrings.facebookLogo))),
             ),
             const SizedBox(width: LSizes.spaceBtwItems,),
             Container(
              decoration: BoxDecoration(border: Border.all(color: LColors.grey), borderRadius: BorderRadius.circular(100)),
              child: IconButton(onPressed: (){}, icon: const Image(
                width: LSizes.iconMd,
                height: LSizes.iconMd,
                image: AssetImage(LImageStrings.appleLogo))),
             ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
