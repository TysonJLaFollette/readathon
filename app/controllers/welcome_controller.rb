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
    Rails.logger.debug("no way")
    @users = User.all
    @bookitems = Bookitem.all
    @users2books = Users2book.all


  end




end
