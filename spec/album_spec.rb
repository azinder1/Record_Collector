require('rspec')
require('pry')
require('album')

describe(Album) do
  before() do
    Album.clear()
  end
  describe('#title') do
    it("returns the name of an album object") do
      album1 = Album.new(:title => "Some Girls", :format => "LP", :quality => "Very Good")
      expect(album1.title()).to(eq("Some Girls"))
    end
  end

  describe('#format') do
    it("returns the format of the album object") do
      album1 = Album.new(:title => "Some Girls", :format => "LP", :quality => "Very Good")
      expect(album1.format()).to(eq("LP"))
    end
  end

  describe('#quality') do
    it("returns the quality of the album object") do
      album1 = Album.new(:title => "Some Girls", :format => "LP", :quality => "Very Good")
      expect(album1.quality()).to(eq("Very Good"))
    end
  end
  describe("#id") do
    it("returns the associated id number with a new instance") do
      album1 = Album.new(:title => "Some Girls", :format => "LP", :quality => "Very Good")
      expect(album1.id()).to(eq(1))
    end
  end
  describe('.all') do
    it('will return all album instances') do
        expect(Album.all()).to(eq([]))
    end
  end
  describe('save') do
    it('it will save an instance') do
      album1 = Album.new(:title => "Some Girls", :format => "LP", :quality => "Very Good")
      album1.save()
      expect(Album.all()).to(eq([album1]))
    end
  end
  describe('clear') do
    it("will clear all instances from album class array") do
      album1 = Album.new(:title => "Some Girls", :format => "LP", :quality => "Very Good")
      album1.save()
      Album.clear()
      expect(Album.all()).to(eq([]))
    end
  end
end
