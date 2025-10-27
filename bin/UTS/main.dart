import 'models/taksi.dart';
import 'models/bus.dart';
import 'models/pesawat.dart';
import 'pemesanan.dart';

// Fungsi buat pemesanan
Pemesanan buatPemesanan(transportasi, String nama, int jumlahPenumpang) {
  double total = transportasi.hitungTarif(jumlahPenumpang);
  return Pemesanan("PM-${DateTime.now().millisecondsSinceEpoch}",
      nama, transportasi, jumlahPenumpang, total);
}

// Fungsi tampilkan semua pemesanan
void tampilSemuaPemesanan(List<Pemesanan> daftar) {
  print("\n==== RIWAYAT PEMESANAN ====");
  for (var p in daftar) {
    p.cetakStruk();
  }
}

void main() {
  var taksi = Taksi("T01", "Taksi BlueBird", 5000, 4, 10);
  var bus = Bus("B01", "Bus TransJakarta", 3000, 40, true);
  var pesawat = Pesawat("P01", "Garuda Indonesia", 1500000, 150, "Bisnis");

  List<Pemesanan> daftar = [];

  daftar.add(buatPemesanan(taksi, "Jos", 1));
  daftar.add(buatPemesanan(bus, "Triana", 5));
  daftar.add(buatPemesanan(pesawat, "Gilbert", 2));

  tampilSemuaPemesanan(daftar);
}