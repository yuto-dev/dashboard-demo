const express = require('express');
const cors = require('cors');
const pool = require('./db');

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());
app.use(express.static('public'));

app.get('/data', async (req, res) => {
  try {
    const result = await pool.query('SELECT * FROM students');
    res.json(result.rows);
  } catch (err) {
    console.error(err.message);
    res.status(500).send('Server Error');
  }
});

app.get('/kendaraan-data', async (req, res) => {
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

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
