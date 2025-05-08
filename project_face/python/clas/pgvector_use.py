from clas.pgvector_Query import Databases

class UseDatabases(Databases):
    
    def __init__(self):
        self.table = "face"
        self.database = "public"
        super().__init__()
    
    def insertUse(self, phone, embedding):
        self.insertDB(database = self.database, table = self.table, colume = "phone, faceId", query = [phone, embedding])
        return True

    def selectUse(self, colume):
        result = self.readDB(database = self.database, table = self.table, colume = colume)
        return result
    
    def loginUse(self, face):
        result = self.readDB(database = self.database, table = self.table, where = "sim <= 0.68", order = "sim", limit = 1, colume = "phone, sim", sub = f"phone, (faceId <=> '{face}') as sim")
        return result

    def updateUseFace(self, face, phone):
        self.updateDB(database = self.database, table = self.table, query = f"face = '{face}'", condition = f"phone = '{phone}'")

    def updateUsePhone(self, change, phone):
        self.updateDB(database = self.database, table = self.table, query = f"phone = '{change}'", condition = f"phone = '{phone}'")

    def deleteUse(self, phone):
        self.deleteDB(database = self.database, table = self.table, condition = f"phone = '{phone}'")

    def disconnect(self):
        self.cursor.close()
        self.db.close()