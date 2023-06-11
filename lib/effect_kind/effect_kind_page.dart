import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

import 'effect_kind.dart';
import 'effect_kind_constant.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kyosho/choose_image/choose_image.dart';
import 'package:kyosho/choose_image/choose_image_provider.dart';

class EffectKindPage extends HookConsumerWidget {
  const EffectKindPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chosenImageFile = ref.watch(ChooseImageProvider);
    List<EffectKind> effectKindList = [];
    for (int i = 0; i < EffectKindId.EffectNum.index; i++) {
      effectKindList.add(EffectKind(
          effectTitle: EffectKindConstant.getEffectKindTitle(i),
          effectDescription: EffectKindConstant.getEffectDescription(i),
          imagePath: EffectKindConstant.getEffectKindPath(i)));
    }
    return ListView.builder(
      itemCount: effectKindList.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage(effectKindList[index].imagePath),
                    fit: BoxFit.fill,
                  )),
              child: ListTile(
                onTap: () async {
                  final image = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  await ref.read(ChooseImageProvider.notifier).pickImage(image);
                },
                title: Text(effectKindList[index].effectTitle),
                subtitle: Column(
                  children: [
                    Text(effectKindList[index].effectDescription),
                  ],
                ),
              ),
            ),
            chosenImageFile.imageFile == null
                ? Image.asset('assets/img/notfound.png')
                : Image.file(
                    chosenImageFile.imageFile!,
                    fit: BoxFit.cover,
                  ),
          ],
        );
      },
    );
  }
}
