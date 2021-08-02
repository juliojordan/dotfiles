var no = function () {
  print("Not on my watch");
}
db.dropDatabase = DB.prototype.dropDatabase = no;
DBCollection.prototype.drop = no;
DBCollection.prototype.dropIndex = no;
DBCollection.prototype.dropIndexes = no;

prompt = function () { return `~/mongodb/${db}$ ` }
EDITOR="/usr/bin/vim"

