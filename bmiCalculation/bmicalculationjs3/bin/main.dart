void main() {
  double tinggiCm = 170.0;
  double beratKg = 65.0;

  if (tinggiCm > 0 && beratKg > 0) {
    // Memanggil fungsi hitung (tanpa riwayat dulu)
    hitungBMI(tinggiCm, beratKg);
  }
}

void hitungBMI(double tinggiCm, double beratKg) {
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

  print("BMI: ${bmi.toStringAsFixed(2)} - Kategori: $kategori");
}