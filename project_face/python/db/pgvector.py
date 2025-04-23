import psycopg2

conn = psycopg2.connect( host="localhost", database="postgres", user="postgres", password="ezen", port=5432)

cur = conn.cursor()

def execute(self,query,args={}):
    self.cursor.execute(query, args)
    row = self.cursor.fetchall()
    return row

a = execute(query = "SELECT * from public.fe")
print(a)
