import 'package:space_x/api/api_client.dart';
import 'package:space_x/api/handler/launches_api.dart';

class ApiService {
  static final ApiService _apiService = ApiService._internal();

  factory ApiService() => _apiService;

  ApiService._internal();

  late final ApiClient _apiClient = ApiClient();
  late final Uri _baseUri = Uri.parse(ApiClient.baseUrl);

  LaunchesApi? _launchesApi;
  LaunchesApi get launchApi => _launchesApi ??= LaunchesApi(apiClient: _apiClient, baseUri: _baseUri);
}
