void main() {
  // Data karyawan
  String nama = "Jos Mulalinda";
  int jamKerja = 40;
  double upahPerJam = 50000;
  bool statusTetap = true; // true = tetap dan false = kontrak

  // Mengitung gaji kotor
  int gajiKotor = (jamKerja * upahPerJam). toInt();

  // Rumus tentukan pajak
  int pajak;
  if (statusTetap) {
    pajak = (0.10 * gajiKotor). toInt(); // 10% untuk karyawan tetap
  } else {
    pajak = (0.05 * gajiKotor). toInt(); // 5% untuk karyawan kontrak
  }

  // Mengitung gaji bersih
  int gajiBersih = gajiKotor - pajak;

  // Tampilkan hasil
  print("Nama Karyawan : $nama");
  print("Gaji Kotor    : Rp$gajiKotor");
  print("Pajak         : Rp$pajak");
  print("Gaji Bersih   : Rp$gajiBersih");
}

///jika ingin menghitung karyawan gaji bersih dan gaji kotor karyawan kontrak
///tinggal mengubah variabel statusTetap menjadi false.