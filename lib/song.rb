require 'pry'

class Song

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end

    def self.new_by_filename(file_name)
        file_array = file_name.split(" - ")
        song_name = file_array[1]
        artist_name = file_array[0]
        song = Song.new(song_name)
        song.artist_name= artist_name
        song
    end
    
    def artist_name=(artist)
        # binding.pry
        artist = Artist.find_or_create_by_name(artist)
        artist.add_song(self)
    end





end