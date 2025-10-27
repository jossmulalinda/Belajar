import 'models/transportasi.dart';

class Pemesanan {
  String idPemesanan;
  String namaPelanggan;
  Transportasi transportasi;
  int jumlahPenumpang;
  double totalTarif;

  Pemesanan(this.idPemesanan, this.namaPelanggan, this.transportasi,
      this.jumlahPenumpang, this.totalTarif);

  void cetakStruk() {
    print("\n===== STRUK PEMESANAN =====");
    print("ID Pemesanan: $idPemesanan");
    print("Nama Pelanggan: $namaPelanggan");
    print("Transportasi: ${transportasi.nama}");
    print("Jumlah Penumpang: $jumlahPenumpang");
    print("Total Tarif: Rp$totalTarif");
    print("===========================\n");
  }

  Map<String, dynamic> toMap() {
    return {
      "idPemesanan": idPemesanan,
      "namaPelanggan": namaPelanggan,
      "transportasi": transportasi.nama,
      "jumlahPenumpang": jumlahPenumpang,
      "totalTarif": totalTarif,
    };
  }
}
