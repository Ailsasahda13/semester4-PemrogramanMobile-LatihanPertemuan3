void main() {
  List<Map<String, dynamic>> riwayat = [];
  
  // Simulasi Input & Validasi Sederhana
  double tinggi = 170;
  double berat = 65;

  if (tinggi <= 0 || berat <= 0) {
    print("Input tidak valid!");
  } else {
    print("Input siap diproses.");
  }
}