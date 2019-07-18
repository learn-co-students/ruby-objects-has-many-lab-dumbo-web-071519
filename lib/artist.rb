class Artist
    attr_accessor :name, :songs

    SONGS = []
    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song_obj)
        @songs << song_obj
        SONGS << song_obj
        song_obj.artist = self
    end
    def add_song_by_name(song_name)
        song = Song.new(song_name)
        add_song(song)
    end
    def self.song_count
        SONGS.size
    end
end