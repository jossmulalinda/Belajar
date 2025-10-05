import 'dart:io';

void main() {

  stdout.write("Masukkan nilai Mahasiswa: ");
  String? input = stdin.readLineSync();
  int? skor = int.tryParse(input ?? "");

  if (skor == null) {
    print("Error: Input bukan angka!");
  } else if (skor < 0 || skor > 100) {
    print("Error: Skor harus antara 0 - 100.");
  } else {

    String grade;
    if (skor >= 85) {
      grade = "A";
    } else if (skor >= 70) {
      grade = "B";
    } else if (skor >= 60) {
      grade = "C";
    } else if (skor >= 50) {
      grade = "D";
    } else {
      grade = "E";
    }


    print("Skor Anda: $skor");
    print("Grade Anda: $grade");
  }
}