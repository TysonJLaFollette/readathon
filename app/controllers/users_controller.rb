class UsersController < ApplicationController
	http_basic_authenticate_with name: "12", password: "12", only: :destroy
	def index
		@users = User.all
	end


	def show

		@users2books = Users2book.all
		@bookitems = Bookitem.all

		@user = User.find(params[:id])
		@newUserBook = Users2book.new
	end



	def new
		@user = User.new
	end

	def edit
		@user = User.find(params[:id])
		@page_sum = 0
		@books_total = 0
			@booklist = Users2book.all.each do |user2book|
				if user2book.userid === @user.id
				 @page_sum = @page_sum + Bookitem.find_by_id(user2book.bookid).pages
				 @books_total = @books_total + 1
				end
			end
		@user.pages_read = @page_sum
		@user.books_read = @books_total

		#this will implement the users reading level based on # of pages and books read
		@standing = ""
		if @user.pages_read >= 0 && @user.books_read >= 0
			@standing = "Novice"
		end
		if @user.pages_read > 200 && @user.books_read > 3
			@standing = "Apprentice"
		end
		if @user.pages_read > 1000 && @user.books_read > 10
			@standing = "Journey Man"
		end
		if @user.pages_read > 10000 && @user.books_read > 20
			@standing = "Master"
		end


		@user.reading_level = @standing
		@user.save

	end


	def create
		@user = User.new(user_params)

		if @user.save
			redirect_to users_path
		else
			render 'new'
		end
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end


	def destroy
		@user = User.find(params[:id])
		@user.destroy

		redirect_to users_path
	end


private
	def user_params
		params.require(:user).permit(:name, :is_teacher, :age, :pages_read, :books_read, :reading_level, :book_list)

	end

end
