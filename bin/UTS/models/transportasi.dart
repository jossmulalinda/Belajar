abstract class Transportasi {
  String id;
  String nama;
  double _tarifDasar; 
  int kapasitas;

  Transportasi(this.id, this.nama, this._tarifDasar, this.kapasitas);

  double get tarifDasar => _tarifDasar;

  double hitungTarif(int jumlahPenumpang);

  void tampilInfo() {
    print("ID: $id");
    print("Nama: $nama");
    print("Tarif Dasar: $tarifDasar");
    print("Kapasitas: $kapasitas");
  }
}