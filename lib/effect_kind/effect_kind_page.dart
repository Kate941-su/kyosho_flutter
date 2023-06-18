import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

import 'effect_kind.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kyosho/choose_image/choose_image_provider.dart';

class EffectKindPage extends HookConsumerWidget {
  const EffectKindPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
//    final chosenImageFile = ref.watch(chooseImageProvider);
    return ListView.builder(
      itemCount: EffectKind.list.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage(EffectKind.list[index].imagePath),
                    fit: BoxFit.fill,
                  )),
              child: ListTile(
                onTap: () async {
                  final image = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  await ref.read(chooseImageProvider.notifier).pickImage(image);
                },
                title: Text(
                    EffectKind.list[index].title,
                  style: TextStyle(
                    color: EffectKind.list[index].whenOrNull(
                      edge: () => Colors.white,
                    ),
                  ),
                ),
                subtitle: Column(
                  children: [
                    Text(
                      EffectKind.list[index].description,
                      style: TextStyle(
                        color: EffectKind.list[index].whenOrNull(
                          edge: () => Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
//            chosenImageFile.imageFile == null
//                ? Image.asset('assets/img/notfound.png')
//                : Image.file(
//                    chosenImageFile.imageFile!,
//                    fit: BoxFit.cover,
//                 ),
          ],
        );
      },
    );
  }
}
