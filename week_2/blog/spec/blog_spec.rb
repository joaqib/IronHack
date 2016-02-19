require_relative "../lib/blog"
require "pry"

RSpec.describe Blog do 
  describe "class that is going to contain all the posts" do
    it "we are going to add new post" do
      post1 = Post.new("titulo","contenido")
      joaqib_blog = Blog.new
      joaqib_blog.add_post(post1)
      expect(joaqib_blog.posts).to eq([post1])
    end
    it "the class order the posts in chronological" do
      joaqib_blog = Blog.new
      post1 = Post.new("titulo1","contenido1")
      post2 = Post.new("titulo2","contenido2")
      joaqib_blog.add_post(post2)
      joaqib_blog.add_post(post1)
      expect(joaqib_blog.latest_posts).to eq([post1,post2])
    end
  end
end
