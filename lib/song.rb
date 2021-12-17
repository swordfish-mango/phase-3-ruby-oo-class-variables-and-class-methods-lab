class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    def initialize(name,artist,genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists.push(artist)
        @@genres.push(genre)
    end

    def self.count
        @@count
    end
    
    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        res = {}
        self.artists.each do |el|
            res[el] = @@artists.count(el)
        end
        return res
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        res = {}
        self.genres.each do |el|
            res[el] = @@genres.count(el)
        end
        return res
    end
end
