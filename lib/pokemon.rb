class Pokemon
  attr_accessor :name, :type, :id, :db
  
  def initialize(id:, name:, type:, db:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def self.save(name, type, db)
    database_connection.execute("INSERT INTO pokemon ( name, type, db) VALUES (?, ?, ?)", name, type, db)
  end
  
  def find
  end
end
