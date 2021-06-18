require 'pry'

class MP3Importer

    attr_accessor :path, :files
   
    def initialize(path=nil)
        @path = path
    end

    def path
        @path
    end

    def files
        @files = Dir.entries(@path).drop(2)
    end

    # MP3Importer.new('./spec/fixtures').import
    def import
        self.files.each{|file| Song.new_by_filename(file)}
    end

end