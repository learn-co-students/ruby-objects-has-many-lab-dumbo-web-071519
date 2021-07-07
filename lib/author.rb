require 'pry'

class Author

attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select {|post| post.author = self}
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(name)
    new = Post.new(name)
    new.author = self
  end

  def self.post_count
    Post.all.map {|post| post.author_name}.compact.count
  end

end
