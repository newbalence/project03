from pgvector_test import Databases

class UseDatabases():
    
    def __init__(self):
        self.table = "face"
        self.database = "public"
    
    def insertUse(self, phone, embedding):
        self.db = Databases()
        self.db.insertDB(database = self.database, table = self.table, colume = "phone, faceId", query = [phone, embedding])
        self.db.__del__()

    def selectUse(self, colume):
        self.db = Databases()
        result = self.db.readDB(database = self.database, table = self.table, colume = colume)
        return result
    
    def loginUse(self, face):
        self.db = Databases()
        result = self.db.readDB(database = self.database, table = self.table, where = "sim <= 0.68", order = "sim", limit = 1, colume = "phone, sim", sub = f"phone, (faceId <=> '{face}') as sim")
        self.db.__del__()
        return result

    def updateUseFace(self, face, phone):
        self.db = Databases()
        self.db.updateDB(database = self.database, table = self.table, query = f"face = '{face}'", condition = f"phone = '{phone}'")
        self.db.__del__()

    def updateUsePhone(self, change, phone):
        self.db = Databases()
        self.db.updateDB(database = self.database, table = self.table, query = f"phone = '{change}'", condition = f"phone = '{phone}'")
        self.db.__del__()

    def deleteUse(self, phone):
        self.db = Databases()
        self.db.deleteDB(database = self.database, table = self.table, condition = f"phone = '{phone}'")
        self.db.__del__()

    