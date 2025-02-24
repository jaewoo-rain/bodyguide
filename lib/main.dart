import 'package:app/app/app.dart';
import 'package:app/app/launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(
    widgetsBinding: widgetsBinding,
  );
  // await dotenv.load(fileName: "./.env");
  await App.initializePrimary();

  runApp(
    const Launcher(),
  );
}
