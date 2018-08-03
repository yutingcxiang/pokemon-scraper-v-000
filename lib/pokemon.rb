class Pokemon
  attr_accessor :name, :type, :id
  
  def initialize(name: name, type: type, db: db)
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    database_connection.execute("INSERT INTO cats (name, breed, age) VALUES (?, ?, ?)",name, breed, age)
  end
  
  def find
  end
end
