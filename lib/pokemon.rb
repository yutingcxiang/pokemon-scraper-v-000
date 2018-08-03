class Pokemon
  attr_accessor :name, :type, :id
  
  def initialize(name: name, type: type, db: db)
    @name = name
    @type = type
    @db = db
  end
  
  def save
  end
  
  def find
  end
end
