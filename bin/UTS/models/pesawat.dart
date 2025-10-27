import 'transportasi.dart';

class Pesawat extends Transportasi {
  String kelas;

  Pesawat(String id, String nama, double tarifDasar, int kapasitas, this.kelas)
      : super(id, nama, tarifDasar, kapasitas);

  @override
  double hitungTarif(int jumlahPenumpang) {
    double faktor = (kelas == "Bisnis") ? 1.5 : 1.0;
    return tarifDasar * jumlahPenumpang * faktor;
  }
}