class Artist
    
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name 
        @@all << self
    end

    def songs #this creates the has many relationship
        Song.all.select{|song| song.artist == self}
    end

    def add_song(song)
        #when you add a song, this things artist is equal to this name
        song.artist = self
        
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
       song.artist = self
        
    end

    def self.song_count
       Song.all.count
    end
end