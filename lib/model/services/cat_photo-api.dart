import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class CatPhotoApi {
  final url = "https://api.thecatapi.com/v1/images/search";
  Future<Either<Exception, String>> getRandomCatPhoto() async {
    try {
      http.Response response = await http.get(url);
      print(response.body);
      print(response.statusCode);

      return Right(response.body);
    } catch (e) {
      return Left(e);
    }
  }
}
