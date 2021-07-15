class Artist
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |instance| instance.artist == self }
  end

  def genres
    Song.all.select { |instance| instance.artist == self }.collect { |instance| instance.genre }
  end
end
