import psycopg2
from psycopg2 import sql

# Database connection parameters
db_params = {
    'dbname': 'dbdummy',
    'user': 'db_user',
    'password': 'abi',
    'host': 'localhost',
    'port': '5432'
}

# Connect to the PostgreSQL database
conn = psycopg2.connect(**db_params)
cur = conn.cursor()

# Create table query
create_table_query = '''
CREATE TABLE IF NOT EXISTS kendaraanTable (
    KendaraanID SERIAL PRIMARY KEY,
    NamaPemilik VARCHAR(100),
    TipeKendaraan CHAR(1),
    KelasPajak CHAR(1),
    TanggalRegistrasi DATE,
    PembayaranTerakhir DATE,
    MetodePembayaran BOOLEAN
);
'''

# Execute the query to create the table
cur.execute(create_table_query)

# Commit changes and close the connection
conn.commit()
cur.close()
conn.close()

print("Table 'kendaraan' created successfully (if it did not already exist).")
