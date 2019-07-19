#posts belong to author
class Post
    attr_accessor :author,:title, :author_name
    # attr_reader 
    
    @@all = []

    def initialize(title)
        @title = title
        #@artist = nil
        @@all << self
    end

    #INSTANCE METHODS

    #CLASS METHODS
    def author_name
        if @author
            @author.name
        else 
            nil
        end
    end

    def self.all 
        @@all
    end
end