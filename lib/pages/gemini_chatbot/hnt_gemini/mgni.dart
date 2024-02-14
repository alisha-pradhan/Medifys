import 'package:flutter/material.dart';
//only import updated
import 'package:get/get.dart'; //dependency added
import 'package:image_picker/image_picker.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    RxString result = ''.obs;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 7, 7, 7),
        body: Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Obx(
                      () => Text(
                        result.value,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
        bottomSheet: TextField(
          autofocus: false,
          decoration: InputDecoration(
            hintText: 'give your query',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(24),
              ),
            ),
            prefixIcon: IconButton(
              onPressed: () {
                ImagePicker();
              },
              icon: const Icon(Icons.camera_alt_outlined),
            ),
            suffixIcon: IconButton(
              onPressed: () async {
                result.value =
                    await GeminiAPI.getGeminiData(textController.text);
              },
              icon: const Icon(Icons.send),
            ),
          ),
          keyboardType: TextInputType.text,
          controller: textController,
        ),
      ),
    );
  }
}
