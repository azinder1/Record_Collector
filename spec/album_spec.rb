require('rspec')
require('pry')
require('album')

describe(Album) do
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
end
