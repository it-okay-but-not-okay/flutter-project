import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController input = new TextEditingController();
  bool isCameraPermissionEnable = false;

  void scan() async {
    String cameraScanResult = await scanner.scan();
    setState(() {
      input.text = cameraScanResult;
    });
  }

  void share() {}
  void checkPermissions() async {
    if (await Permission.camera.request().isGranted) {
      setState(() {
        isCameraPermissionEnable = true;
      });
      if (await Permission.camera.isPermanentlyDenied) {
        openAppSettings();
      }
    }
  }
  @override
  void initState() {
    checkPermissions();
    super.initState();
  }

  void copy() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR SCANNER"),
      ),
      body: !isCameraPermissionEnable
          ? Center(
              child: ElevatedButton(
                onPressed:()=> openAppSettings(),
                child: Text("เปิดกล้องได้แล้วโว้ยย")
              ),
            )
          : Container(
              child: Column(
                children: [
                  Text("กดปุ่ม Scan เพื่อเริ่ม scan"),
                  Stack(
                    children: [
                      TextFormField(
                        controller: input,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 10,
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Column(
                          children: [
                            ElevatedButton.icon(
                              onPressed: copy,
                              icon: Icon(Icons.copy),
                              label: Text("Copy"),
                            ),
                            ElevatedButton.icon(
                              onPressed: share,
                              icon: Icon(Icons.share),
                              label: Text("share"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: ElevatedButton.icon(
                      onPressed: scan,
                      icon: Icon(Icons.camera),
                      label: Text("Scan"),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
