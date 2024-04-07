import 'package:flutter_application_1/app/data/model/especialista/especialista_data.dart';
import 'package:flutter_application_1/app/data/provider/especialistas_provider.dart';

EspecialistasProvider especialistasProvider = EspecialistasProvider();

class EspecialistasRepository {
  Future<List<EspecialistaData>> listarEspecialistas(String id) async {
    final raw = await especialistasProvider.getRaw(id);
    final List<dynamic> data = raw.body['data'];

    List<EspecialistaData> especialistas =
        data.map((json) => EspecialistaData.fromJson(json)).toList();

    print(especialistas);
    print('No llego al aqui');
    return especialistas;
  }
}
