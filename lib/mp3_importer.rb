require 'pry'

class MP3Importer 

    attr_reader :path
    
    def initialize(path)
        @path = path
    end

    def files
        Dir.children(path).select do |file|
            file.include? ".mp3"
        end
    end

    def import
        self.files.each do |file|
            Song.new_by_filename(file)
        end
    end


end