class WelcomeController < ApplicationController
  def index

  end

  def masterview
    @users = User.all
  	@bookitems = Bookitem.all
  	@users2books = Users2book.all
  end

  def contact

  end

  def careers

  end

  def about
  	
  end
  
  def classsummary
	@numstudents = User.where("is_teacher = 'false'").count
	@studentslist = User.where("is_teacher = 'false'").first(@numstudents)
	
	@studentsquery = User.where("is_teacher = 'false'")
	
	#number of pages read by all students in class.
	@classpagetotal = 0
	@allbooklists = Users2book.all
	for @bookread in @allbooklists
		@curbookspages = Bookitem.find(@bookread.bookid).pages
		@classpagetotal = @classpagetotal + @curbookspages
	end
	#number of nonunique books read by all students in class.
	@nonuniquebooksread = Users2book.all.count
	
	#average age
	@averageage = @studentsquery.average("age").round(1)
	
	#top 3 students
	@topthreestudents = User.all.order(pages_read: :desc).first(3)
	
	#bottom 3 students
	@bottomthreestudents = User.all.order(pages_read: :asc).first(3).reverse
	
	#highest pages read
	@highestpagesread = User.all.order(pages_read: :desc).first().pages_read
	
	#lowest pages read
	@fewestpagesread = User.all.order(pages_read: :asc).first().pages_read
	
  end

  def displayview

    @user_options = User.all.map{ |u| [ u.name, u.id ] }
    @users = User.all
    @bookitems = Bookitem.all
    @users2books = Users2book.all
  end

  def infoview
    Rails.logger.debug(:user_id)
    Rails.logger.debug(:foo_param)
    @foo = params[:foo_param] #maybe?
   

  end




end
