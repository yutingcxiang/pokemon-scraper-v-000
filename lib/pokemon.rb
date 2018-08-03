class Pokemon
  attr_accessor :name, :type, :id, :db
  
  def initialize(id:, name:, type:, db:)
    @name = name
    @type = type
    @db = db
    @id = id
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id, db)
    array = db.execute("SELECT * FROM pokemon WHERE id = (?)", id)
    pkmn = {}
    pkmn << {
      id => array[1]
      name =>
    }
  end
end
