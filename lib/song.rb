class Song

    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name=nil, artist=nil, genre=nil)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def name
        @name
    end

    def name=(name)
        @name = name
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        input = filename.split(/ - |.mp3/)
        Artist.find_or_create_by_name(input[0])
        Song.new(input[1], Artist.find_or_create_by_name(input[0]), input[2])
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end

end