require('rspec')
require('pry')
require('artist')
require('album')
require('person')


describe(Person) do
  describe('#name') do
    it("returns the user name") do
      person1 = Person.new(:name => "Greg")
      expect(person1.name()).to(eq("Greg"))
    end
  end

  describe('#id') do
    it("returns the user id") do
      artist1 = Person.new(:name => "Greg")
      expect(artist1.id()).to(eq(1))
    end
  end

  describe('.all') do
    it("lists all the people in the people array") do
      expect(Person.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves an users to the artists array") do
      person1 = Person.new(:name => "Greg")
      person1.save()
      expect(Person.all()).to(eq([person1]))
    end
  end

  describe('.clear') do
    it("clears the global people array") do
      person1 = Person.new(:name => "Greg")
      person1.save()
      Person.clear()
      expect(Person.all()).to(eq([]))
    end
  end

  describe('#add_artist') do
    it("adds an artist to the persons artist array") do
      person1 = Person.new(:name => "Greg")
      artist1 = Artist.new(:name => "The Rolling Stones")
      person1.add_artist(artist1)
      expect(person1.artists()).to(eq([artist1]))
    end
  end
  describe('.find') do
    it('will find a unique id out of the Class array') do
      person1 = Person.new(:name => "Greg")
      person1.save()
      person2 = Person.new(:name => "Katy")
      person2.save()
      expect(Person.find(2)).to(eq(person2))
    end
  end
end
