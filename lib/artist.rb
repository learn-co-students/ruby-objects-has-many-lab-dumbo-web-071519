#artist has many songs
#require_relative "lib/song.rb"
#require 'pry'

class Artist
    attr_accessor :name, :songs
    #attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    #INSTANCE METHODS

    #songs
    #has many songs (FAILED - 1)
  
    def songs
        Song.all.select do |individual_song| 
            individual_song.artist == self 
        end
    end
    #add_song
    # takes in an argument of a song and associates 
    # that song with the artist by telling the song that 
    # it belongs to that artist 
    def add_song(song)
        song.artist = self
        #puts "#{song} belongs to #{self}"
    end

    #add_song_by_name
    #takes in an argument of a song name, 
    #creates a new song with it and associates the song and artist 
    def add_song_by_name(title)
        #method should take in an argument of a name (or title), 
        #use that argument to create a new song (or post) and then associate the objects.
        new_song = Song.new(title)
        new_song.artist = self
    end

    #CLASS METHODS
    # def self.songs
    #     Song.all.select do |individual_song| 
    #         individual_song.artist == self 
    #     end
    # end

    def self.song_count
        Song.all.count
    end
 
    def self.all 
        @@all = []
    end
end

adele = Artist.new("Adele")
kanye = Artist.new("Kanye")

#rolling = Song.new("rolling in the deep")
#ultralight = Song.new("ultralight beam")

#binding.pry