import 'package:space_x/api/api_client.dart';
import 'package:space_x/api/model/launch.dart';

typedef Json = Map<String, dynamic>;

class LaunchesApi {
  LaunchesApi({
    required this.apiClient,
    required this.baseUri,
  });

  final ApiClient apiClient;
  final Uri baseUri;

  Future<List<Launch>> getLaunches() async => await apiClient.dio
      .get('$baseUri')
      .then((response) => (response.data as List).map((e) => Launch.fromJson(e as Map<String, dynamic>)).toList());
}
