import 'dart:io';

void main() {
  // Daftar menu makanan & minuman
  List<Map<String, dynamic>> makanan = [
    {"nama": "Nasi pedis gila", "harga": 12000},
    {"nama": "Ayam A6", "harga": 10000},
    {"nama": "Sapi asam pedis", "harga": 15000},
    {"nama": "Kambing bakar mercon", "harga": 20000}
  ];

  List<Map<String, dynamic>> minuman = [
    {"nama": "Air Batu Campur Durian (ABCD)", "harga": 5000},
    {"nama": "Es Batu Besar", "harga": 5000},
    {"nama": "Kopi Putih", "harga": 7000},
    {"nama": "Air Bening", "harga": 5000}
  ];

  // List untuk menyimpan pesanan
  Map<String, int> pesananMakanan = {};
  Map<String, int> pesananMinuman = {};

  print("=== Restoran Anak Kos ===\n");

  bool lanjutPesan = true;

  while (lanjutPesan) {
    // ---------------------------
    // PESAN MAKANAN
    // ---------------------------
    print("Menu Makanan:");
    for (int i = 0; i < makanan.length; i++) {
      print("${i + 1}. ${makanan[i]['nama']} - Rp${makanan[i]['harga']}");
    }

    while (true) {
      stdout.write(
          "\nMasukkan nomor makanan yang ingin dipesan, atau ketik 0 untuk lanjut: ");
      int? pilihan = int.tryParse(stdin.readLineSync() ?? "");

      if (pilihan == null || pilihan == 0) break;

      if (pilihan > 0 && pilihan <= makanan.length) {
        var item = makanan[pilihan - 1];
        stdout.write("Jumlah ${item['nama']}: ");
        int jumlah = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
        if (jumlah > 0) {
          pesananMakanan[item['nama']] =
              (pesananMakanan[item['nama']] ?? 0) + jumlah;
        }
      } else {
        print("⚠️ Nomor tidak valid, coba lagi.");
      }
    }

    // ---------------------------
    // PESAN MINUMAN (langsung tampil)
    // ---------------------------
    print("\nMenu Minuman:");
    for (int i = 0; i < minuman.length; i++) {
      print("${i + 1}. ${minuman[i]['nama']} - Rp${minuman[i]['harga']}");
    }

    while (true) {
      stdout.write(
          "\nMasukkan nomor minuman yang ingin dipesan, atau ketik 0 untuk selesai: ");
      int? pilihan = int.tryParse(stdin.readLineSync() ?? "");

      if (pilihan == null || pilihan == 0) break;

      if (pilihan > 0 && pilihan <= minuman.length) {
        var item = minuman[pilihan - 1];
        stdout.write("Jumlah ${item['nama']}: ");
        int jumlah = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
        if (jumlah > 0) {
          pesananMinuman[item['nama']] =
              (pesananMinuman[item['nama']] ?? 0) + jumlah;
        }
      } else {
        print("⚠️ Nomor tidak valid, coba lagi.");
      }
    }

    // Tanya apakah ingin menambah pesanan
    stdout.write("\nApakah masih ingin menambah pesanan? (y/n): ");
    String? tambah = stdin.readLineSync();
    if (tambah == null || tambah.toLowerCase() != "y") {
      lanjutPesan = false;
    } else {
      print("\nBaik, silakan tambahkan pesanan Anda!\n");
    }
  }

  // ---------------------------
  // HITUNG TOTAL
  // ---------------------------
  int total = 0;
  print("\n============================");
  print("        STRUK PESANAN");
  print("============================");

  if (pesananMakanan.isNotEmpty) {
    print("\n🍽️  Makanan:");
    pesananMakanan.forEach((nama, jumlah) {
      var item = makanan.firstWhere((m) => m['nama'] == nama);
      int subtotal = item['harga'] * jumlah;
      total += subtotal;
      print("- $nama x$jumlah = Rp$subtotal");
    });
  }

  if (pesananMinuman.isNotEmpty) {
    print("\n🥤  Minuman:");
    pesananMinuman.forEach((nama, jumlah) {
      var item = minuman.firstWhere((m) => m['nama'] == nama);
      int subtotal = item['harga'] * jumlah;
      total += subtotal;
      print("- $nama x$jumlah = Rp$subtotal");
    });
  }

  print("\n----------------------------");
  print("💰 Total Bayar: Rp$total");
  print("============================");
  print("Thank You and Enjoy the meal!");
}