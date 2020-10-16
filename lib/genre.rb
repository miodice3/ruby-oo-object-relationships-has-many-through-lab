class Genre

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        return_arr = []
        Song.all.each do |genre|
            if genre.genre.name == self.name
                return_arr << genre.artist
            end
        end
        return_arr
    end

end