import 'package:flutter/material.dart';
import 'package:flutter_recaptcha_v2_compat/generated/colors.gen.dart';
import 'package:flutter_recaptcha_v2_compat/generated/fonts.gen.dart';

import '../../../generated/assets.gen.dart';
import '../../../src/common/extensions/build_context_x.dart';

class RecaptchaV2Button extends StatefulWidget {
  final bool? isErrorShowing;
  final bool? isVerified;
  final Function(bool verified) onVerified;

  const RecaptchaV2Button({
    super.key,
    this.isErrorShowing = false,
    this.isVerified = false,
    required this.onVerified,
  });

  @override
  State<RecaptchaV2Button> createState() => _RecaptchaV2ButtonState();
}

class _RecaptchaV2ButtonState extends State<RecaptchaV2Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: 320.0,
            ),
            padding: EdgeInsets.only(left: 4, top: 4, right: 12, bottom: 4),
            decoration: BoxDecoration(
              color: ColorName.buttonBackground,
              border: Border.all(
                color: ColorName.borderGrey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(2.4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: RCAssets.icons.icCbEmpty.svg(),
                    ),
                    Text(
                      "I'm not a robot",
                      style: context.textTheme.regular.copyWith(
                        color: ColorName.black,
                        fontFamily: FontFamily.roboto,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 62.0,
                  width: 66.0,
                  child: RCAssets.images.icPcTc.image(fit: BoxFit.fill),
                )
              ],
            ),
          ),
          SizedBox(height: 4),
          widget.isErrorShowing == true && widget.isVerified == false
              ? Text(
                  'Please verify that you are not a robot.',
                  style: context.textTheme.regular.copyWith(
                    color: ColorName.red,
                    fontFamily: FontFamily.roboto,
                    fontSize: 14,
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
