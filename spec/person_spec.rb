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

  # describe('#save') do
  #   it("saves an artist to the artists array") do
  #     artist1 = Artist.new(:name => "The Rolling Stones")
  #     artist1.save()
  #     expect(Artist.all()).to(eq([artist1]))
  #   end
  # end
  #
  # describe('.clear') do
  #   it("clears the global artists array") do
  #     artist1 = Artist.new(:name => "The Rolling Stones")
  #     artist1.save()
  #     Artist.clear()
  #     expect(Artist.all()).to(eq([]))
  #   end
  # end
  #
  # describe('#add_album') do
  #   it("adds an album to the artist array") do
  #     artist1 = Artist.new(:name => "The Rolling Stones")
  #     album1 = Album.new(:title => "Some Girls", :format => "LP", :quality => "Very Good")
  #     artist1.add_album(album1)
  #     expect(artist1.albums()).to(eq([album1]))
  #   end
  # end
  # describe('.find') do
  #   it('will find a unique id out of the Class array') do
  #     artist1 = Artist.new(:name => "The Rolling Stones")
  #     artist1.save()
  #     artist2 = Artist.new(:name => "Katy Perry")
  #     artist2.save()
  #     expect(Artist.find(2)).to(eq(artist2))
  #   end
  # end
end
