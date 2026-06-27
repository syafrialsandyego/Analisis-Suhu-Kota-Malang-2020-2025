# Analisis-Suhu-Kota-Malang-2020-2025
Analisis Suhu Kota Malang 2020-2025
# 🌦️ Analisis Tren Suhu Kota Malang (2020 - 2025)

Repositori ini berisi skrip kodingan R dan data historis untuk menganalisis tren perkembangan suhu udara di **Kota Malang** selama periode 2020 hingga 2025. Proyek ini bertujuan untuk melihat pola musiman serta mendeteksi adanya indikasi peningkatan suhu tahunan (*urban warming*).

---

## 📂 Struktur Repositori
* 📄 `analisis_suhu_malang.R` : Skrip utama RStudio untuk memproses data dan membuat visualisasi grafik.
* 📊 `Analisis_Suhu_Kota_Malang_2020_2025.xlsx` : Dataset simulasi suhu bulanan Kota Malang beserta ringkasan formulanya.
* 🖼️ `README.md` : Dokumentasi panduan proyek ini.

---

## 🛠️ Prasyarat & Package R
Untuk menjalankan kodingan di RStudio, pastikan Anda telah menginstal beberapa library berikut:
```R
install.packages("ggplot2")
install.packages("dplyr")
install.packages("readxl")
```

## 🚀 Cara Menjalankan Proyek
1. Unduh (Download) file analisis_suhu_malang.R dan Analisis_Suhu_Kota_Malang_2020_2025.xlsx.
2. Masukkan kedua file tersebut ke dalam satu folder yang sama di komputer Anda.
3. Buka file analisis_suhu_malang.R menggunakan aplikasi RStudio.
4. Jalankan seluruh baris kode (Blok semua lalu tekan Ctrl + Enter atau Cmd + Enter).
5. Hasil analisis angka akan muncul di Console dan grafik tren waktu akan muncul di panel Plots.

## 📊 Hasil Analisis Ringkas
Berdasarkan data simulasi ini, Kota Malang menunjukkan:
1. Suhu Terdingin: Umumnya terjadi di sekitar bulan Juli - Agustus (efek musim kemarau dan angin monsun).
2. Tren Jangka Panjang: Terjadi indikasi kenaikan suhu rata-rata yang stabil dari tahun 2020 hingga 2025 akibat efek perkembangan wilayah urban.
