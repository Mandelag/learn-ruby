def hitung_jodoh(nama_kamu, umur_kamu, x_kamu, y_kamu,
  nama_pasangan, umur_pasangan, x_pasangan, y_pasangan)
  # ambil parameter dari nama
  # 1. selisih jumlah huruf hidup
  # 2. selisih umur
  # 3. jarak planar antar pasangan
  # 4. selisih total byte
  selisih_jumlah_huruf_hidup = (nama_kamu.downcase.count "aiueo") - (nama_pasangan.downcase.count "aiueo")
  selisih_umur = (umur_kamu - umur_pasangan).magnitude
  jarak_planar = ((x_kamu-x_pasangan)**2 + (y_kamu-y_pasangan)**2)**0.5

  # normalisasi => memberikan makna pada parameter
  if selisih_jumlah_huruf_hidup <= 3
    selisih_jumlah_huruf_hidup_normal = 1 # cocok
  elsif selisih_jumlah_huruf_hidup <= 6
    selisih_jumlah_huruf_hidup_normal = 0.5 # cukup cocok
  elsif selisih_jumlah_huruf_hidup > 9
    selisih_jumlah_huruf_hidup_normal = 0.25 # tidak cocok
  else
    selisih_jumlah_huruf_hidup_normal = 0
  end

  if selisih_umur < 10
    selisih_umur_normal = 1 # dekat, OK
  else
    selisih_umur_normal = 0 # jauh :(
  end

  if jarak_planar < 10
    jarak_planar_normal = 1 # dekat
  elsif jarak_planar < 50
    jarak_planar_normal = 0.5 # cukup dekat ...
  else
    jarak_planar_normal = 0 # jauh :(
  end
  bobot_selisih_jumlah_huruf_hidup = 0.25
  bobot_selisih_umur = 0.25
  bobot_selisih_jarak = 0.5

  skor = selisih_jumlah_huruf_hidup_normal*bobot_selisih_jumlah_huruf_hidup+
    selisih_umur_normal*bobot_selisih_umur+
    jarak_planar_normal*bobot_selisih_jarak

  puts "Jarak: #{jarak_planar} meter"
  puts "Selisih huruf: #{selisih_jumlah_huruf_hidup} karakter"
  puts "Selisih umur: #{selisih_umur} tahun"
  puts """  #{selisih_jumlah_huruf_hidup_normal}x#{bobot_selisih_jumlah_huruf_hidup}+
  #{selisih_umur_normal}x#{bobot_selisih_umur}+
  #{jarak_planar_normal}x#{bobot_selisih_jarak}
   = #{skor}"""
end

hitung_jodoh("Budiman Susanto", 25, 1000, 105,
  "Riana Susilo", 23, 997, 85)
