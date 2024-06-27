const express = require('express');
const cors = require('cors');
const pool = require('./db');

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());
app.use(express.static('public'));

app.get('/kendaraan-data2', async (req, res) => {
  // 2. Data Jumlah Kendaraan Bermotor
  try {
    const result = await pool.query(`
      SELECT TipeKendaraan, COUNT(*) as count
      FROM kendaraanTable
      GROUP BY TipeKendaraan
    `);
    res.json(result.rows);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

app.get('/kendaraan-data3', async (req, res) => {
  // 3. Data Jumlah Kendaraan Bermotor Yang Tidak Membayar Pajak Selama 5 Tahun
  try {
    const result = await pool.query(`
      SELECT TipeKendaraan, COUNT(*) as count
      FROM kendaraanTable
      WHERE TanggalRegistrasi < '2020-01-01'
      AND TanggalRegistrasi > '2018-12-31'
      GROUP BY TipeKendaraan;
    `);
    res.json(result.rows);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

app.get('/kendaraan-data4', async (req, res) => {
  // 4. Data Jumlah Kendaraan Bermotor Yang Tidak Membayar Pajak Selama 7 Tahun
  try {
    const result = await pool.query(`
      SELECT TipeKendaraan, COUNT(*) as count
      FROM kendaraanTable
      WHERE TanggalRegistrasi < '2018-01-01'
      AND TanggalRegistrasi > '2016-12-31'
      GROUP BY TipeKendaraan;
    `);
    res.json(result.rows);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});


app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
