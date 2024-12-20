-- Create main destinations table
CREATE TABLE destinasi (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nama_tempat VARCHAR(255) NOT NULL,
    harga TEXT,
    deskripsi TEXT,
    lokasi TEXT,
    telp VARCHAR(20),
    fax VARCHAR(20),
    email VARCHAR(100),
    jam_buka TEXT,
    thumbnail VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create table for destination images
CREATE TABLE destinasi_gambar (
    id INT PRIMARY KEY AUTO_INCREMENT,
    destinasi_id INT,
    gambar_url VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (destinasi_id) REFERENCES destinasi(id) ON DELETE CASCADE
);

-- Create table for transactions
CREATE TABLE transaksi (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    ticket_count INT NOT NULL,
    selected_date DATE NOT NULL,
    total_payment DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    destinasi_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (destinasi_id) REFERENCES destinasi(id) ON DELETE CASCADE
);

INSERT INTO destinasi (nama_tempat, harga, deskripsi, lokasi, telp, fax, email, jam_buka, thumbnail) VALUES 
('Candi Borobudur', 'Rp 750.000 / orang', 'Candi Buddha terbesar di dunia', 'Magelang, Jawa Tengah', '+62 293 788367', '+62 293 788367', 'info@borobudurpark.com', 'Senin-Minggu: 06.00-17.00', 'borobudur_thumbnail.jpg'),
('Taman Pintar', 'Rp 40.000 / orang', 'Pusat edukasi dan rekreasi anak', 'Yogyakarta', '+62 274 565692', '+62 274 565693', 'humas@tamanpintar.com', 'Selasa-Minggu: 09.00-16.00, Tutup Senin', 'taman_pintar_thumbnail.jpg'),
('Benteng Vredeburg', 'Rp 15.000 / orang', 'Museum sejarah perjuangan kemerdekaan', 'Yogyakarta', '+62 274 562893', '+62 274 562894', 'info@bentengvredeburg.com', 'Selasa-Minggu: 08.00-15.30, Tutup Senin', 'benteng_vredeburg_thumbnail.jpg'),
('Museum Merapi', 'Rp 5.000 / orang', 'Museum dokumentasi letusan Gunung Merapi', 'Sleman, Yogyakarta', '+62 274 895749', '+62 274 895750', 'museum.merapi@gmail.com', 'Senin-Minggu: 08.00-16.00', 'museum_merapi_thumbnail.jpg'),
('Keraton Yogya', 'Rp 20.000 / orang', 'Istana resmi Kesultanan Yogyakarta', 'Yogyakarta', '+62 274 373721', '+62 274 374904', 'info@kratonjogja.com', 'Senin-Minggu: 09.00-14.00', 'keraton_yogya_thumbnail.jpg'),
('Taman Sari', 'Rp 5.000 / orang', 'Bekas taman kerajaan Keraton Yogyakarta', 'Yogyakarta', '+62 274 419455', '+62 274 419456', 'tamansari.jogja@gmail.com', 'Senin-Minggu: 09.00-15.00', 'taman_sari_thumbnail.jpg'),
('Monjali', 'Rp 10.000 / orang', 'Museum Monumen Jogja Kembali', 'Yogyakarta', '+62 274 287312', '+62 274 287313', 'monjali.museum@gmail.com', 'Selasa-Minggu: 08.00-16.00, Tutup Senin', 'monjali_thumbnail.jpg'),
('Obelix Suraloka Zoo', 'Rp 30.000 / orang', 'Kebun binatang dengan berbagai satwa', 'Sleman, Yogyakarta', '+62 274 895749', '+62 274 895750', 'info@suraloka.com', 'Senin-Minggu: 09.00-17.00', 'suraloka_zoo_thumbnail.jpg'),
('Taman Kaliurang', 'Rp 25.000 / orang', 'Objek wisata alam di lereng Merapi', 'Sleman, Yogyakarta', '+62 274 895123', '+62 274 895124', 'tamankaliurang@gmail.com', 'Senin-Minggu: 07.00-18.00', 'taman_kaliurang_thumbnail.jpg'),
('Heha Sky View', 'Rp 40.000 / orang', 'Destinasi wisata dengan pemandangan kota', 'Sleman, Yogyakarta', '+62 812-3456-7890', '+62 274 895125', 'info@hehaskyview.com', 'Senin-Minggu: 10.00-22.00', 'heha_sky_view_thumbnail.jpg'),
('Bhumi Merapi', 'Rp 30.000 / orang', 'Tempat wisata dengan view Gunung Merapi', 'Sleman, Yogyakarta', '+62 813-4567-8901', '+62 274 895126', 'info@bhumimerapi.com', 'Senin-Minggu: 06.00-18.00', 'bhumi_merapi_thumbnail.jpg'),
('Hutan Pinus', 'Rp 5.000 / orang', 'Hutan pinus dengan pemandangan indah', 'Yogyakarta', '+62 274 895127', '+62 274 895128', 'hutanpinus.jogja@gmail.com', 'Senin-Minggu: 06.00-18.00', 'hutan_pinus_thumbnail.jpg'),
('Puncak Becici', 'Rp 25.000 / orang', 'Lokasi dengan panorama alam menakjubkan', 'Yogyakarta', '+62 274 895129', '+62 274 895130', 'puncakbecici@gmail.com', 'Senin-Minggu: 06.00-18.00', 'puncak_becici_thumbnail.jpg'),
('Tebing Breksi', 'Rp 20.000 / orang', 'Objek wisata tebing dengan relief batu', 'Sleman, Yogyakarta', '+62 274 895131', '+62 274 895132', 'tebingbreksi@gmail.com', 'Senin-Minggu: 07.00-18.00', 'tebing_breksi_thumbnail.jpg'),
('Bukit Paralayang', 'Rp 20.000 / orang', 'Lokasi olahraga paralayang', 'Yogyakarta', '+62 274 895133', '+62 274 895134', 'bukitparalayang@gmail.com', 'Senin-Minggu: 06.00-18.00', 'bukit_paralayang_thumbnail.jpg'),
('Gembira Loka', 'Rp 75.000 / orang', 'Kebun Binatang terbesar di Yogyakarta', 'Yogyakarta', '+62 274 378610', '+62 274 378611', 'info@gembiraloka.com', 'Senin-Minggu: 08.00-17.00', 'gembira_loka_thumbnail.jpg'),
('Candi Prambanan', 'Rp 50.000 / orang', 'Kompleks Candi Hindu terbesar di Indonesia', 'Sleman, Yogyakarta', '+62 274 486511', '+62 274 486512', 'info@prambanan.com', 'Senin-Minggu: 06.00-17.00', 'prambanan_thumbnail.jpg');


SELECT x.* FROM cupu_travel.destinasi x

-- Insert gambar untuk Candi Borobudur
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Candi Borobudur'), 'borobudur_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Candi Borobudur'), 'borobudur_2.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Candi Borobudur'), 'borobudur_3.jpg');

-- Insert gambar untuk Taman Pintar
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Taman Pintar'), 'taman_pintar_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Taman Pintar'), 'taman_pintar_2.jpg');

-- Insert gambar untuk Benteng Vredeburg
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Benteng Vredeburg'), 'benteng_vredeburg_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Benteng Vredeburg'), 'benteng_vredeburg_2.jpg');

-- Insert gambar untuk Museum Merapi
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Museum Merapi'), 'museum_merapi_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Museum Merapi'), 'museum_merapi_2.jpg');

-- Insert gambar untuk Keraton Yogya
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Keraton Yogya'), 'keraton_yogya_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Keraton Yogya'), 'keraton_yogya_2.jpg');

-- Insert gambar untuk Taman Sari
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Taman Sari'), 'taman_sari_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Taman Sari'), 'taman_sari_2.jpg');

-- Insert gambar untuk Monjali
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Monjali'), 'monjali_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Monjali'), 'monjali_2.jpg');

-- Insert gambar untuk Obelix Suraloka Zoo
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Obelix Suraloka Zoo'), 'suraloka_zoo_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Obelix Suraloka Zoo'), 'suraloka_zoo_2.jpg');

-- Insert gambar untuk Taman Kaliurang
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Taman Kaliurang'), 'taman_kaliurang_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Taman Kaliurang'), 'taman_kaliurang_2.jpg');

-- Insert gambar untuk Heha Sky View
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Heha Sky View'), 'heha_sky_view_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Heha Sky View'), 'heha_sky_view_2.jpg');

-- Insert gambar untuk Bhumi Merapi
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Bhumi Merapi'), 'bhumi_merapi_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Bhumi Merapi'), 'bhumi_merapi_2.jpg');

-- Insert gambar untuk Hutan Pinus
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Hutan Pinus'), 'hutan_pinus_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Hutan Pinus'), 'hutan_pinus_2.jpg');

-- Insert gambar untuk Puncak Becici
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Puncak Becici'), 'puncak_becici_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Puncak Becici'), 'puncak_becici_2.jpg');

-- Insert gambar untuk Tebing Breksi
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Tebing Breksi'), 'tebing_breksi_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Tebing Breksi'), 'tebing_breksi_2.jpg');

-- Insert gambar untuk Bukit Paralayang
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Bukit Paralayang'), 'bukit_paralayang_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Bukit Paralayang'), 'bukit_paralayang_2.jpg');

-- Insert Gambar untuk Gembira Loka
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Gembira Loka'), 'gembira_loka_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Gembira Loka'), 'gembira_loka_2.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Gembira Loka'), 'gembira_loka_3.jpg');

-- Insert Gambar untuk Candi Prambanan
INSERT INTO destinasi_gambar (destinasi_id, gambar_url) VALUES 
((SELECT id FROM destinasi WHERE nama_tempat = 'Candi Prambanan'), 'prambanan_1.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Candi Prambanan'), 'prambanan_2.jpg'),
((SELECT id FROM destinasi WHERE nama_tempat = 'Candi Prambanan'), 'prambanan_3.jpg');