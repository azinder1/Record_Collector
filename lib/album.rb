class Album
  @@albums = []

  attr_reader(:title, :format, :quality)

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @format = attributes.fetch(:format)
    @quality = attributes.fetch(:quality)
    @id = @@albums.length().+(1)
  end
  def id
    @id
  end
  def self.all
    @@albums
  end
  def self.clear
    @@albums = []
  end
  def save
    @@albums.push(self)
  end
  def find(id)
    found_album = nil
    @@albums.each() do |album|
      if album.id().eql?(id)
        found_album = album
      end
    end
    found_album
  end
end
