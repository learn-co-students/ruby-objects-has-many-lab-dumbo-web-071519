class Artist
    @@all = []

    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
        @songs << song
        @@all << song
    end

    def add_song_by_name(song_name)
        self.add_song(Song.new(song_name))
    end

    def self.song_count
        @@all.count
    end
end