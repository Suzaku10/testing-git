import 'package:testing_git/constant.dart';
import 'package:testing_git/main.dart';

Future<void> main() async {
  AppEnvironment.env = 'dev';
   mainProgram();
}