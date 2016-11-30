class Album
  @@albums = []

  attr_reader(:title, :format, :quality)

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @format = attributes.fetch(:format)
    @quality = attributes.fetch(:quality)
    @id = @@albums.length().+(1)
  end  
end
