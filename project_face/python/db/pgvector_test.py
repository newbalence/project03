import psycopg2

class Databases():
    def __init__(self):
        self.db = psycopg2.connect(host='localhost', dbname='postgres',user='postgres',password='ezen',port=5432)
        self.cursor = self.db.cursor()

    def __del__(self):
        self.db.close()
        self.cursor.close()

    def execute(self,query,args={}):
        self.cursor.execute(query,args)
        row = self.cursor.fetchall()
        return row

    def commit(self):
        self.db.commit()
        
    def insertDB(self, database, table, colume, query):
        t = ", ".join(["%s"]*len(query))
        # sql = "INSERT INTO " + database + "." + table + "(" + colume + ") VALUES (" + query + ") ;"
        sql = f"INSERT INTO {database}.{table}({colume}) values({t})"
        
        try:
            self.cursor.execute(sql, tuple(query))
            self.db.commit()
        except Exception as e :
            print(" insert DB  ",e) 


    def readDB(self, colume, database, table, where = None, order = None, limit = None, sub = None):
        # sql = "SELECT " + colume + " from " + database + "." + table
        sql = f"SELECT {colume} from"

        if sub != None:
            sql += f"(select {sub} from {database}.{table})"
        else:
            sql += f" {database}.{table}"
        if where != None:
            sql += f" where {where}"
        if order != None:
            sql += f" order by {order}"
        if limit != None:
            sql += f" limit {limit}"
        
        try:
            self.cursor.execute(sql)
            result = self.cursor.fetchall()
        except Exception as e :
            result = (" read DB err",e)
        
        return result

    def updateDB(self, database, table, query, condition):
        # sql = "UPDATE " + database + "." + table + " SET " + query + " WHERE " + condition
        sql = f"UPDATE {database}.{table} SET {query} WHERE {condition}"

        try :
            self.cursor.execute(sql)
            self.db.commit()
        except Exception as e :
            print(" update DB err",e)

    def deleteDB(self, database, table, condition):
        sql = f"delete from {database}.{table} where {condition} ;"
        
        try :
            self.cursor.execute(sql)
            self.db.commit()
        except Exception as e:
            print( "delete DB err", e)

    

    