import 'package:netflix/infrastructure/api_key.dart';
import 'package:netflix/core/strings.dart';

class ApiEndPoints {
  static const downloads = "$kbaseUrl/trending/all/day?api_key=$apiKey";
}
