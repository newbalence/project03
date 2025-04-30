import pymysql

class MySql():
    def __init__(self):
        self.conn = pymysql.connect(
            host="localhost",
            user="root",
            password="ezen",
            database="project03"
        )
        self.cursor = self.conn.cursor()

    def excute(self, sql):
        self.cursor.execute(sql)
        result = self.cursor.fetchall()
        return result
    
    def commit(self):
        self.conn.commit()

    def insertDB(self, table, colume, query=[]):
        t = ", ".join(["%s"]*len(query))
        sql = f"INSERT INTO .{table}({colume}) values({t})"
        try:
            self.cursor.execute(sql, tuple(query))
            self.conn.commit()
        except Exception as e :
            print(" insert DB  ",e) 

    def readDB(self, colume, table, where = None, order = None, limit = None, sub = None):
        sql = f"SELECT {colume} from"

        if sub != None:
            sql += f" (select {sub} from {table})"
        else:
            sql += f" {table}"
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
    
    def updateDB(self, table, query, condition):
        sql = f"UPDATE {table} SET {query} WHERE {condition}"

        try :
            self.cursor.execute(sql)
            self.conn.commit()
        except Exception as e :
            print(" update DB err",e)

    def deleteDB(self, table, condition):
        sql = f"delete from {table} where {condition} ;"
        
        try :
            self.cursor.execute(sql)
            self.conn.commit()
        except Exception as e:
            print( "delete DB err", e)
        
    def closeDB(self):
        self.cursor.close()
        self.conn.close()