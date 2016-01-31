#1 Create a class that will be the blueprint for each ‘BlogPost’ object. This class should set a title, content, a publish date, and maybe even an author for each NEW post. You may want to do this by modifying the initialize method OR you may want you craft your own method, with all the special behaviour in it.

class Blog

	@@blog_num = 0
	@@all_blogs = Array.new
  attr_accessor :title
  attr_accessor :author
  attr_accessor :content
  attr_accessor :publish_date  
 
 def make_new_blog?
		puts "Do you want to create a new blog post? [Y/N]"
		answer = gets.chomp
		if answer == 'y'
			return true
		elsif answer == 'n'
			return false
		else
			puts "I'm sorry, that's not a valid option."
			make_new_blog?
		end
	end
	
	def add_new_blog (blog_object)
		@all_blogs.push (blog_object)
	end

	def publish_blogs
		puts @@all_blogs
	end
end

#2 Use logic to create a prompt saying “do you want to create another blog post? [Y/N]”. If you hit Y the script will run through the questions to add content. If you hit N, you will stop entering content.


#3 Hmm, shouldn’t you be practicing inheritance? Create a parent class called something like ‘Blog’, that will keep track of how many blog posts you have created, and what to do with them.

# Blog should be the parent class, and BlogPost the child class.
class BlogPost < Blog
  
  def initialize
    @@blog_num += 1
    set_blog_properties
  end

	def set_blog_properties 
		print "Title: "
  	@title = gets
  	print "Author: "
  	@author = gets
  	print "Content: "
  	@content = gets	
  	@publish_date = Time.new.inspect
	end

	def save_blog
		blog = {
			title: @title,
			author: @author,
			content: @content,
			publish_date: @publish_date
		}

		@@all_blogs.push(blog)
			
	end
end


blog = Blog.new

while blog.make_new_blog?
	new_blog = BlogPost.new
	new_blog.save_blog
end

blog.publish_blogs

#4 Save all blog posts in an array or a hash (you learned about these in lesson 7), in the parent class. Experiment with both. Push every new blog post into said array. Look up ‘Array’ methods in ruby to figure out how this might be possible.



#5 Let’s create a variable that will count our blog posts, starting at 0, and a method that will increment with each new blog post created and appended to our array of posts. Should this be an instance variable or a class variable? In what class should this counter be?


#6 Create a ‘publish’ method that will output all your blog posts to the terminal Would that be a class or instance method?


#7 Make it so that blog posts can have authors