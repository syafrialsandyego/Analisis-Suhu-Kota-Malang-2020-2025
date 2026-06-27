library(ggplot2)
library(dplyr)
# Memasukkan data manual/dummy suhu bulanan Kota Malang (2020-2025)
# Menggunakan pola: suhu lebih dingin di pertengahan tahun (Juli-Agustus) karena musim kemarau/angin muson barat
set.seed(42)

tahun <- rep(2020:2025, each = 12)
bulan <- rep(month.name, times = 6)

# Simulasi base suhu Malang + efek kenaikan suhu global/urban warming tiap tahun
base_suhu <- c(24.2, 24.5, 24.8, 25.0, 24.6, 23.8, 22.9, 23.1, 24.0, 24.9, 24.7, 24.4)
efek_tahun <- rep((2020:2025 - 2020) * 0.15, each = 12) # simulasi naik 0.15°C per tahun
variasi_acak <- rnorm(72, mean = 0, sd = 0.3)

suhu_malang <- round(rep(base_suhu, times = 6) + efek_tahun + variasi_acak, 1)

# Menggabungkan menjadi Data Frame
data_malang <- data.frame(
  Tahun = tahun,
  Bulan = factor(bulan, levels = month.name),
  Suhu_C = suhu_malang
)

# Membuat kolom Tanggal buatan untuk mempermudah grafik timeline
data_malang$Tanggal <- as.Date(paste(data_malang$Tahun, as.numeric(data_malang$Bulan), "15", sep = "-"))

# Intip data yang berhasil dibuat
head(data_malang, 12)
# Menghitung rata-rata suhu tahunan
tren_tahunan <- data_malang %>%
  group_by(Tahun) %>%
  summarise(
    Suhu_Rata_Rata = mean(Suhu_C),
    Suhu_Tertinggi = max(Suhu_C),
    Suhu_Terendah = min(Suhu_C)
  )

print("--- Perkembangan Suhu Tahunan Kota Malang ---")
print(tren_tahunan)
# Membuat plot garis tren waktu
ggplot(data_malang, aes(x = Tanggal, y = Suhu_C)) +
  geom_line(color = "#3498db", size = 0.7, alpha = 0.7) + 
  geom_point(color = "#2980b9", size = 1.5) +
  geom_smooth(method = "lm", color = "#e74c3c", linetype = "solid", size = 1.2, se = TRUE) +
  labs(
    title = "Analisis Suhu Udara Kota Malang (2020 - 2025)",
    subtitle = "Titik Biru: Suhu Bulanan | Garis Merah: Tren Kenaikan Suhu Jangka Panjang",
    x = "Tahun",
    y = "Suhu Rata-Rata Bulanan (°C)"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14, color = "#2c3e50"),
    axis.title = element_text(face = "bold"),
    panel.grid.minor = element_blank()
  )
install.packages("writexl")
library(writexl)

# write_xlsx(nama_data_di_R, "nama_file_tujuan.xlsx")
write_xlsx(data_malang, "Analisis_Suhu_Malang_Baru.xlsx")