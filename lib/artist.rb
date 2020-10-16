require 'pry'
class Artist

    @@all = []

    attr_accessor :name, :genre

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        new_song_created = Song.new(name, self, genre)
        #new_song_created.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres #this will need some work to format and remove duplicates, possible flatten.
        
        return_arr = []
        Song.all.each do |song| 
           if song.artist.name == self.name
            return_arr << song.genre
           end
        end
        return_arr
    end
    
end