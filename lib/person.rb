class Person
  @@people = []

  attr_reader(:name)

  def initialize (attributes)
    @name = attributes.fetch(:name)
    @id = @@people.length().+(1)
    @artist = []
  end

  def id
    @id
  end
  def artists
    @artist
  end
  def self.all
    @@people
  end
  def save
    @@people.push(self)
  end
  def self.clear
    @@people = []
  end
  def add_artist(artist)
    @artist.push(artist)
  end
  def self.find(id)
    person_found = nil
    @@people.each() do |person|
      if person.id().eql?(id)
        person_found = person
      end
    end
    person_found
  end
end
