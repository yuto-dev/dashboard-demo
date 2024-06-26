import psycopg2
from faker import Faker
import random
from datetime import datetime, timedelta

# Database connection parameters
db_params = {
    'dbname': 'dbdummy',
    'user': 'db_user',
    'password': 'abi',
    'host': 'localhost',
    'port': '5432'
}

# Initialize Faker and database connection
fake = Faker('id_ID')
conn = psycopg2.connect(**db_params)
cur = conn.cursor()

# Generate random dates
def random_date(start, end):
    return start + timedelta(days=random.randint(0, (end - start).days))

# Insert data into table
num_records = 1000  # Number of records to insert
today = datetime.today()

for _ in range(num_records):
    NamaPemilik = fake.name()
    TipeKendaraan = random.choices(
        ['A', 'B', 'C', 'D', 'E', 'F'],
        weights=[0.6, 0.20, 0.05, 0.05, 0.05, 0.05],
        k=1
    )[0]
    KelasPajak = TipeKendaraan
    TanggalRegistrasi = random_date(today - timedelta(days=365*10), today)
    PembayaranTerakhir = random.choice(
        [TanggalRegistrasi, random_date(TanggalRegistrasi + timedelta(days=1), today)]
    )
    MetodePembayaran = random.choices([True, False], weights=[0.55, 0.45], k=1)[0]

    insert_query = '''
    INSERT INTO kendaraanTable (NamaPemilik, TipeKendaraan, KelasPajak, TanggalRegistrasi, PembayaranTerakhir, MetodePembayaran)
    VALUES (%s, %s, %s, %s, %s, %s)
    '''
    cur.execute(insert_query, (NamaPemilik, TipeKendaraan, KelasPajak, TanggalRegistrasi, PembayaranTerakhir, MetodePembayaran))

# Commit changes and close the connection
conn.commit()
cur.close()
conn.close()

print(f"{num_records} records inserted successfully into 'kendaraan' table.")
