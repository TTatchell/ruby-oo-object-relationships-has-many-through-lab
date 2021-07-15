class Genre
    attr_reader :name
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|instance| instance.genre == self}
    end

    def artists
        Song.all.select {|instance| instance.genre == self}.collect {|instance| instance.artist}
    end
end