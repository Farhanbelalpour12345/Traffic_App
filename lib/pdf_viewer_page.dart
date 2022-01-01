
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';


class PDFViewerPage extends StatefulWidget {
  const PDFViewerPage({Key? key,required this.file,required this.text}) : super(key: key);
  final File file;
  final String text;

  @override
  _PDFViewerPageState createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends State<PDFViewerPage> {
  @override
  Widget build(BuildContext context) {
   // final name = basename(widget.file.path);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.text),
      ),
      body: PDFView(
        filePath: widget.file.path,
      ),
    );
  }
}

