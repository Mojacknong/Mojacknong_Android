import 'package:farmus/common/form/primary_text_field.dart';
import 'package:farmus/common/primary_text_form_field.dart';
import 'package:farmus/common/theme/farmus_theme_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/button/routine_add_button.dart';
import '../../../common/theme/farmus_theme_text_style.dart';

class VegeRoutineAdd extends ConsumerWidget {
  const VegeRoutineAdd({
    super.key,
    required this.vege,
    required this.vegeName,
  });

  final String vege;
  final String vegeName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                vegeName,
                style: FarmusThemeTextStyle.darkSemiBold15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  vege,
                  style: FarmusThemeTextStyle.gray2Medium15,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RoutineAddButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  backgroundColor: FarmusThemeColor.white,
                  builder: (BuildContext context) {
                    return const SizedBox(
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Column(
                            children: [
                              IntrinsicHeight(
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.0, top: 32.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      VerticalDivider(
                                        color: FarmusThemeColor.green1,
                                        thickness: 2,
                                        indent: 0,
                                        endIndent: 10,
                                      ),
                                      SizedBox(
                                        height: 35,
                                        width: 250,
                                        child: PrimaryTextField(maxLength: 10, hintText: 'hintText')
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                                child: Divider(
                                  color: FarmusThemeColor.gray4,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
