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
