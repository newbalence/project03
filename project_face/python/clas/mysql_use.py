from clas.mysql_Query import MySql

class UseMySql(MySql):
    def __init__(self):
        super().__init__()

    def signup(self, query=[]):
        self.insertDB(table = "phone, name, birth", query=query)
        return True
    
    def selectUse(self, table, colume):
        result = self.readDB(table = table, colume = colume )