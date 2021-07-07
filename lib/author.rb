class Author
    attr_accessor :name, :posts

    POSTS = []
    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post_obj)
        @posts << post_obj
        POSTS << post_obj
        post_obj.author = self
    end
    def add_post_by_title(post_name)
        post = Post.new(post_name)
        add_post(post)
    end
    def self.post_count
        POSTS.size
    end
end