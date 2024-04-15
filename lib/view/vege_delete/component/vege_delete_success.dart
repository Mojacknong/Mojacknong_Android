import 'package:farmus/view/on_boarding/component/main_sub_title.dart';
import 'package:farmus/view/vege_delete/component/vege_success_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'content_input_text_form.dart';

class VegeDeleteSuccess extends ConsumerStatefulWidget {
  const VegeDeleteSuccess({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VegeDeleteSuccessState();
}

class _VegeDeleteSuccessState extends ConsumerState<VegeDeleteSuccess> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        MainSubTitle(
          mainText: '축하해요!\n홈파밍 결과를 기록해주세요.',
          subText: '나중에 마이페이지에서 등록 가능해요',
        ),
        SizedBox(
          height: 16,
        ),
        VegeSuccessImage(),
        SizedBox(
          height: 16,
        ),
        ContentInputTextForm(
          maxLength: 50,
        ),
      ],
    );
  }
}
