require 'pry'
class Post

    @@all = []
    
    attr_accessor :post, :author, :title

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if self.author != nil
           self.author.name 
        end
    end
end