const { Pool } = require('pg');

const pool = new Pool({
  user: 'db_user',
  host: 'localhost',
  database: 'dbdummy',
  password: 'abi',
  port: 5432,
});

const insertDummyData = async () => {
  const client = await pool.connect();

  try {
    await client.query('BEGIN');

    const insertText = `
      INSERT INTO your_table (label, value)
      VALUES ($1, $2)
    `;

    const dummyData = [
      { label: 'January', value: 10 },
      { label: 'February', value: 20 },
      { label: 'March', value: 30 },
      { label: 'April', value: 40 },
      { label: 'May', value: 50 },
    ];

    for (const data of dummyData) {
      await client.query(insertText, [data.label, data.value]);
    }

    await client.query('COMMIT');
    console.log('Dummy data inserted successfully');
  } catch (error) {
    await client.query('ROLLBACK');
    console.error('Error inserting dummy data:', error);
  } finally {
    client.release();
  }
};

insertDummyData().catch((error) => console.error('Unexpected error:', error));
