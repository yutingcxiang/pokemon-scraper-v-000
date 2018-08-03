class Pokemon
  attr_accessor :name, :type, :id, :db
  
  def initialize(id:, name:, type:, db:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (id, name, type) VALUES (?, ?, ?)", id, name, type)
  end
  
  def find
  end
end
