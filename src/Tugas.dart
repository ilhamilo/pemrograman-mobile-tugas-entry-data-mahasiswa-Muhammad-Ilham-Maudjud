import 'dart:io';

void main() {
  List<Map<String, String>> mahasiswaList = [];

  print("=== ENTRI DATA MAHASISWA ===");

  for (int i = 0; i < 10; i++) {
    print("\nData ke-${i + 1}:");
    stdout.write("Masukkan NPM   : ");
    String? npm = stdin.readLineSync();

    stdout.write("Masukkan Nama  : ");
    String? nama = stdin.readLineSync();

    stdout.write("Masukkan Prodi : ");
    String? prodi = stdin.readLineSync();

    mahasiswaList.add({
      "NPM": npm ?? "",
      "Nama": nama ?? "",
      "Prodi": prodi ?? ""
    });
  }

  print("\n=== Data Mahasiswa Berhasil Disimpan ===\n");

  bool ditemukan = false;
  while (!ditemukan) {
    stdout.write("Masukkan npm mahasiswa yang ingin dicari: ");
    String? carinpm = stdin.readLineSync();

    for (var mhs in mahasiswaList) {
      if (mhs["npm"] == carinpm) {
        print("\n=== DETAIL MAHASISWA ===");
        print("NPM  : ${mhs["NPM"]}");
        print("Nama  : ${mhs["Nama"]}");
        print("Prodi : ${mhs["Prodi"]}");
        ditemukan = true;
        break;
      }
    }

    if (!ditemukan) {
      print("\n Data mahasiswa tidak ditemukan, silahkan di coba lagi.\n");
    }
  }
}
