DELIMITER //
CREATE TRIGGER cek_pembayaran BEFORE INSERT ON pembayaran
FOR EACH ROW
BEGIN
    DECLARE total_bayar int;
    DECLARE total_pesanan int;
    SELECT SUM(jumlah) INTO total_bayar FROM pembayaran WHERE pesanan_id = NEW.pesanan_id;
    SELECT total INTO total_pesanan FROM pesanan WHERE id = NEW.pesanan_id;
    IF total_bayar + NEW.jumlah >= total_pesanan THEN
        SET NEW.status_pembayaran = 'Lunas';
    END IF;
END //
DELIMITER ;

INSERT INTO pembayaran (invoice, tgl, jumlah, ke, pesanan_id)
VALUES ('INV013', '2023-01-01', 30000, 1, 1);