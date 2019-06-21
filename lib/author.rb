require "pry"

class Author 
  
  @@class_posts = []
  
  attr_accessor :name
  attr_reader :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end 
  
  def add_post(post) 
    @posts << post 
    @@class_posts << post
    post.author = self
  end 
  
  def add_post_by_title(post_name) 
    post = Post.new(post_name)
    post.author = self 
    @posts << post 
    @@class_posts << post
  end 
  
  def self.post_count
    @@class_posts.size 
  end 
  
  
end 