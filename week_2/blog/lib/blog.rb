require "pry"
class Blog
  attr_reader :posts
  def initialize
    @posts = []
  end
  def add_post(post)
    @posts.push(post)
  end
  def latest_posts
    @posts.sort {|a,b| a.date <=> b.date}
  end

end

class Post
  attr_reader :title, :body, :date, :id
  @@actual_id = 0
  def initialize(title,body)
    @title = title
    @body = body
    @date = Time.now
    @id = @@actual_id
    @@actual_id += 1
  end

end