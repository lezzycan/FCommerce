import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_eccommerce/features/authentications/screens/signup/verify_email.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class LSignUpForm extends StatelessWidget {
  const LSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = LHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                      labelText: LTexts.firstName,
                      prefixIcon: const Icon(Iconsax.user),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1.0,
                              color: isDark ? Colors.white : Colors.black),
                          borderRadius: BorderRadius.circular(18.r))),
                ),
              ),
              const SizedBox(
                width: LSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                      labelText: LTexts.lastName,
                      prefixIcon: const Icon(Iconsax.user),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1.0,
                              color: isDark ? Colors.white : Colors.black),
                          borderRadius: BorderRadius.circular(18.r))),
                ),
              )
            ],
          ),
          const SizedBox(
            height: LSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
                labelText: LTexts.username,
                prefixIcon: const Icon(Iconsax.user_edit),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.0,
                        color: isDark ? Colors.white : Colors.black),
                    borderRadius: BorderRadius.circular(18.r))),
          ),
          const SizedBox(
            height: LSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
                labelText: LTexts.email,
                prefixIcon: const Icon(Iconsax.direct),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.0,
                        color: isDark ? Colors.white : Colors.black),
                    borderRadius: BorderRadius.circular(18.r))),
          ),
          const SizedBox(
            height: LSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
                labelText: LTexts.phoneNo,
                prefixIcon: const Icon(Iconsax.call),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.0,
                        color: isDark ? Colors.white : Colors.black),
                    borderRadius: BorderRadius.circular(18.r))),
          ),
          const SizedBox(
            height: LSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
                labelText: LTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: const Icon(Iconsax.eye_slash),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.0,
                        color: isDark ? Colors.white : Colors.black),
                    borderRadius: BorderRadius.circular(18.r))),
          ),
          const SizedBox(
            height: LSizes.spaceBtwInputFields,
          ),
          const TermsAndConditions(),
          const SizedBox(
            height: LSizes.spaceBtwItems,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text(LTexts.createAccount)),
          )
        ],
      ),
    );
  }
}

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = LHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          height: 24.h,
          width: 24.w,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        Text.rich(TextSpan(
            text: '${LTexts.iagreeto} ',
            style: Theme.of(context).textTheme.bodyMedium)),
        Text.rich(TextSpan(
            text: '${LTexts.privacyPolicy} ',
            style: Theme.of(context).textTheme.bodyMedium?.apply(
                  color: isDark ? LColors.textWhite : LColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      isDark ? LColors.textWhite : LColors.primaryColor,
                ))),
        Text.rich(TextSpan(
            text: '${LTexts.and} ',
            style: Theme.of(context).textTheme.bodyMedium)),
        Text.rich(TextSpan(
            text: LTexts.termsofuse,
            style: Theme.of(context).textTheme.bodyMedium?.apply(
                  color: isDark ? LColors.textWhite : LColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      isDark ? LColors.textWhite : LColors.primaryColor,
                )))
      ],
    );
  }
}
