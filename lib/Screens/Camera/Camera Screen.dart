import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';

import 'Alert Dialog.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? _controller;
  bool _isFlashOn = false;
  double _zoomLevel = 1.0; // Initial zoom level
  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    try {
      final cameras = await availableCameras();

      if (cameras.isEmpty) {
        print("No cameras found on the device.");
        return;
      }

      final firstCamera = cameras.first;
      _controller = CameraController(firstCamera, ResolutionPreset.medium);
      await _controller!.initialize();

      if (!mounted) return;

      setState(() {});
    } catch (e) {
      print("Error initializing camera: $e");
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _toggleFlash() {
    setState(() {
      _isFlashOn = !_isFlashOn;
      _controller?.setFlashMode(_isFlashOn ? FlashMode.torch : FlashMode.off);
    });
  }

  Future<void> _capturePicture() async {
    if (!_controller!.value.isInitialized) {
      return;
    }

    final imagePath = await _controller!.takePicture();
    final result = await ImageGallerySaver.saveFile(imagePath.path);

    if (result['isSuccess']) {
      Fluttertoast.showToast(msg: 'Picture saved to gallery.');
    } else {
      Fluttertoast.showToast(msg: 'Failed to save picture to gallery.');
    }
  }

  Future<void> _pickImageFromGallery() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      Fluttertoast.showToast(msg: 'Image pickedhhhhhhhh: ${pickedFile.path}');
    }
  }

  void _onZoomChanged(double value) {
    setState(() {
      _zoomLevel = value;
      _controller?.setZoomLevel(_zoomLevel);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null || !_controller!.value.isInitialized) {
      return Container();
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
                height: MediaQuery.sizeOf(context).height / 1.31,
                child: Stack(
                    children: [
                  CameraPreview(_controller!),
                  Positioned(
                    right: -70,
                    bottom: 120,
                    child: Container(
                      height: 2,
                      child: Transform.rotate(
                        angle: -90 * 3.14 / 180,
                        // Rotate the slider to make it vertical
                        child: Slider(
                          activeColor: Colors.white,
                          value: _zoomLevel,
                          onChanged: _onZoomChanged,
                          min: 0.0,
                          max: 3.0,
                          divisions: 100,
                        ),
                      ),
                    ),
                  )
                ])),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.info_outline),
                    onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomAlertDialog()));
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.flash_on),
                    onPressed: _toggleFlash,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 8,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      _capturePicture();
                      
                    },
                    backgroundColor: Color(0XFF218C03),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 12,
                  ),
                  IconButton(
                    icon: Icon(Icons.photo_library),
                    onPressed: _pickImageFromGallery,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
