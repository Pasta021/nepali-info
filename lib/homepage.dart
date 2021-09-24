import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

var index = 0;

class Homepage extends StatefulWidget {
  Homepage(this.pdfFile, {Key? key}) : super(key: key);
  final String pdfFile;
  final List<String> _pages = [
    'PDF/story.pdf',
    'PDF/one.pdf',
    'PDF/ghost.pdf',
    'PDF/four.pdf',
    'PDF/five.pdf',
  ];

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      floatingActionButton: SizedBox(
        height: 50,
        width: 100,
        child: FloatingActionButton(
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          // onPressed: () {
          //   if (index < 4) {
          //     Navigator.of(context).pushReplacement(
          //       MaterialPageRoute(
          //         builder: (context) => Homepage(widget._pages[index]),
          //       ),
          //     );
          //     setState(() {
          //       index++;
          //     });
          //   } else {
          //     setState(() {
          //       index = 4;
          //     });
          //   }
          // },
          onPressed: () {
            SfPdfViewer.asset(widget._pages[index]);
          },
          child: const Text('Next'),
        ),
      ),
      body: SfPdfViewer.asset(
        widget.pdfFile,
        key: _pdfViewerKey,
      ),
    );
  }
}
