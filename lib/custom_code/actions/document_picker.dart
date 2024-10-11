// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';

Future<FFUploadedFile?> documentPicker() async {
  // Add your function code here!
  final selectedFiles = await selectFiles(
    allowedExtensions: ['docx'],
    multiFile: false,
  );
  if (selectedFiles != null) {
    var selectedUploadedFiles = <FFUploadedFile>[];
    selectedUploadedFiles = selectedFiles
        .map((m) => FFUploadedFile(
              name: m.storagePath.split('/').last,
              bytes: m.bytes,
            ))
        .toList();

    FFAppState().fileName = selectedUploadedFiles.first.name!;

    return selectedUploadedFiles.first;
  }
}

Future<SelectedFile?> selectFile(
        {String? storageFolderPath,
        List<String>? allowedExtensions,
        BuildContext? c}) =>
    selectFiles(
      storageFolderPath: storageFolderPath,
      allowedExtensions: allowedExtensions,
      multiFile: false,
    ).then((value) => value?.first);

Future<List<SelectedFile>?> selectFiles({
  String? storageFolderPath,
  List<String>? allowedExtensions,
  bool multiFile = false,
}) async {
  final pickedFiles = await FilePicker.platform.pickFiles(
    type: allowedExtensions != null ? FileType.custom : FileType.any,
    allowedExtensions: allowedExtensions,
    withData: true,
    allowMultiple: multiFile,
  );
  if (pickedFiles == null || pickedFiles.files.isEmpty) {
    return null;
  }

  final file = pickedFiles.files.first;
  if (file.bytes == null) {
    return null;
  }
  final storagePath = file.name;
  return [
    SelectedFile(
      storagePath: storagePath,
      filePath: isWeb ? null : file.path,
      bytes: file.bytes!,
    )
  ];
}

class SelectedFile {
  const SelectedFile({
    this.storagePath = '',
    this.filePath,
    required this.bytes,
    this.dimensions,
    this.blurHash,
  });
  final String storagePath;
  final String? filePath;
  final Uint8List bytes;
  final MediaDimensions? dimensions;
  final String? blurHash;
}

class MediaDimensions {
  const MediaDimensions({
    this.height,
    this.width,
  });
  final double? height;
  final double? width;
}

String? _removeTrailingSlash(String? path) => path != null && path.endsWith('/')
    ? path.substring(0, path.length - 1)
    : path;
