require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require_relative  "./lib/blog"

joaqib_blog = Blog.new


post1 = Post.new("The Key to Success","Lorem Khaled Ipsum is a major key to success. We the best. Bless up. We don’t see them, we will never see them. The key to more success is to have a lot of pillows. You do know, you do know that they don’t want you to have lunch. I’m keeping it real with you, so what you going do is have lunch. Stay focused. I told you all this before, when you have a swimming pool, do not use chlorine, use salt water, the healing, salt water is the healing. Don’t ever play yourself. Surround yourself with angels, positive energy, beautiful people, beautiful souls, clean heart, angel.

Egg whites, turkey sausage, wheat toast, water. Of course they don’t want us to eat our breakfast, so we are going to enjoy our breakfast. Don’t ever play yourself. How’s business? Boomin. How’s business? Boomin. Congratulations, you played yourself. Surround yourself with angels, positive energy, beautiful people, beautiful souls, clean heart, angel. Always remember in the jungle there’s a lot of they in there, after you overcome they, you will make it to paradise. Congratulations, you played yourself. You do know, you do know that they don’t want you to have lunch. I’m keeping it real with you, so what you going do is have lunch.

")

post2 = Post.new("The Meaning of Life","Egg whites, turkey sausage, wheat toast, water. Of course they don’t want us to eat our breakfast, so we are going to enjoy our breakfast. We the best. To succeed you must believe. When you believe, you will succeed. Every chance I get, I water the plants, Lion! Another one. The ladies always say Khaled you smell good, I use no cologne. Cocoa butter is the key. How’s business? Boomin. Egg whites, turkey sausage, wheat toast, water. Of course they don’t want us to eat our breakfast, so we are going to enjoy our breakfast.

Put it this way, it took me twenty five years to get these plants, twenty five years of blood sweat and tears, and I’m never giving up, I’m just getting started. Learning is cool, but knowing is better, and I know the key to success. Find peace, life is like a water fall, you’ve gotta flow. To succeed you must believe. When you believe, you will succeed. You should never complain, complaining is a weak emotion, you got life, we breathing, we blessed.")

post3 = Post.new("The Secret for Happiness", " <img src=\"http://img.memecdn.com/internet-is-happiness_o_2266795.jpg\" alt=\"\" />")


joaqib_blog.add_post(post2)
joaqib_blog.add_post(post1)
joaqib_blog.add_post(post3)

get "/" do
  @joaqib_blog = joaqib_blog
  erb(:home)
end

get "/:title/:id" do
  @id = params[:id]
  @joaqib_blog = joaqib_blog
  erb(:details)
end

get "/create_post" do
  erb(:create_post)      
end

post "/create_post"do
  erb()
end