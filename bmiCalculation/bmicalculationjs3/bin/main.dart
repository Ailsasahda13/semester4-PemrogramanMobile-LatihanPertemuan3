void main() {
  List<Map<String, dynamic>> riwayat = [];

  // Simulasi input sesuai jobsheet
  hitungBMI(170, 65, riwayat);
  hitungBMI(165, 75, riwayat);
  hitungBMI(180, 85, riwayat);

  // Perulangan untuk menampilkan riwayat
  print("=== RIWAYAT HITUNG BMI ===");
  for (var data in riwayat) {
    print("Tinggi: ${data['tinggi']} | Berat: ${data['berat']} | BMI: ${data['bmi'].toStringAsFixed(2)} | Kategori: ${data['kategori']}");
  }
}

void hitungBMI(double tinggiCm, double beratKg, List<Map<String, dynamic>> riwayat) {
  double tinggiM = tinggiCm / 100;
  double bmi = beratKg / (tinggiM * tinggiM);

  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  // Simpan hasil ke riwayat
  riwayat.add({
    'tinggi': tinggiCm,
    'berat': beratKg,
    'bmi': bmi,
    'kategori': kategori
  });
}