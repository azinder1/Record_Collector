class Artist
  @@artists = []

  attr_reader(:name)

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = @@artists.length.+(1)
    @albums = []
  end
  def id
    @id
  end
  def albums
    @albums
  end
  def self.all
    @@artists
  end
  def self.clear
    @@artists = []
  end
  def save
    @@artists.push(self)
  end
  def add_album(album)
    @albums.push(album)
  end
  def self.find(id)
    found_artist = nil
    @@artists.each() do |artist|
      if artist.id().eql?(id)
        found_artist = artist
      end
    end
    found_artist
  end
end
