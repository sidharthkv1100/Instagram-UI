import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  File? image;

  Future pickImage() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() => image = File(picked.path));
    }
  }

  Future uploadPost() async {
    final ref = FirebaseStorage.instance
        .ref()
        .child('posts/${DateTime.now()}.jpg');
    await ref.putFile(image!);
    final url = await ref.getDownloadURL();

    await FirebaseFirestore.instance.collection('posts').add({
      'imageUrl': url,
      'time': Timestamp.now(),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: pickImage, child: const Text("Pick Image")),
        if (image != null) Image.file(image!, height: 200),
        ElevatedButton(onPressed: uploadPost, child: const Text("Upload")),
      ],
    );
  }
}
