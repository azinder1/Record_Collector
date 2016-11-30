class Person
  @@people = []

  attr_reader(:name)

  def initialize (attributes)
    @name = attributes.fetch(:name)
    @id = @@people.length().+(1)
  end

  def id
    @id
  end
  def self.all
    @@people
  end
end
