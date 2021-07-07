#artist has many songs
#require_relative "lib/song.rb"
#require 'pry'

class Author
    attr_accessor :name, :posts
    #attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    #INSTANCE METHODS

    def posts
        Post.all.select do |individual_post| 
            individual_post.author == self 
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title_arg)
        new_post = Post.new(title_arg)
        new_post.author = self
    end

    def self.post_count
        Post.all.count
    end
 
    def self.all 
        @@all = []
    end
end

