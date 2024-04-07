import 'package:flutter_application_1/app/data/model/specialty/specialty_data.dart';
import 'package:flutter_application_1/app/data/provider/home_provider.dart';

HomeProvider homeProvider = HomeProvider();

class HomeRepository {
  Future<List<SpecialtyData>> listarSpecialidades() async {
    final raw = await homeProvider.getRaw();
    final List<dynamic> data = raw.body['data'];

    List<SpecialtyData> specialties =
        data.map((json) => SpecialtyData.fromJson(json)).toList();

    return specialties;
  }
}
