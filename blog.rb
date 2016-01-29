#1 Create a class that will be the blueprint for each ‘BlogPost’ object. This class should set a title, content, a publish date, and maybe even an author for each NEW post. You may want to do this by modifying the initialize method OR you may want you craft your own method, with all the special behaviour in it.

class BlogPost

  def set_title=(title)
	@title = title
  end
  def set_content=(content)
	@content = content
  end
  def set_publish_date=(publish_date)
	@publish_date = publish_date
  end
  def set_author=(author)
  	@author = author
  end
 
end

#2 Use logic to create a prompt saying “do you want to create another blog post? [Y/N]”. If you hit Y the script will run through the questions to add content. If you hit N, you will stop entering content.


#3 Hmm, shouldn’t you be practicing inheritance? Create a parent class called something like ‘Blog’, that will keep track of how many blog posts you have created, and what to do with them.

class Blog
  @@blog_num = 0
  def initialize
    @@blog_num += 1
    puts "Yay! You have #{blog_num} posts!"
  end
  def self.new
    puts "Do you want to create a new blog post? [Y/N]"
answer = gets.chomp.downcase
while answer == 'y'
  puts "Title: "
  title = gets
  puts "Content: "
  content = gets
  puts "Do you want to create another blog post?? [Y/N]"
  answer = gets
end

  end
  	
end

#4 Save all blog posts in an array or a hash (you learned about these in lesson 7), in the parent class. Experiment with both. Push every new blog post into said array. Look up ‘Array’ methods in ruby to figure out how this might be possible.



#5 Let’s create a variable that will count our blog posts, starting at 0, and a method that will increment with each new blog post created and appended to our array of posts. Should this be an instance variable or a class variable? In what class should this counter be?


#6 Create a ‘publish’ method that will output all your blog posts to the terminal Would that be a class or instance method?


#7 Make it so that blog posts can have authors