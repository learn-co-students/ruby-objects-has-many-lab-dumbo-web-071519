#songs belong to artist
#require_relative "lib/artist.rb"
class Song
    attr_accessor :artist,:name, :artist_name
    # attr_reader 
    
    @@all = []

    def initialize(name)
        @name = name
        #@artist = nil
        @@all << self
    end

    #INSTANCE METHODS

    #CLASS METHODS
    def artist_name
        if @artist
            @artist.name
        else 
            nil
        end
    end

    def self.all 
        @@all
    end
end