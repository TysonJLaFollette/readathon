class Users2booksController < ApplicationController
	 http_basic_authenticate_with name: "12", password: "12", only: :destroy
	def index
		@users2books = Users2book.all

		@users = User.all
		@bookitems = Bookitem.all

	end


	def show

		@users = User.all
		@bookitems = Bookitem.all

		@users2book = Users2book.find(params[:id])
	end



	def new

		@users = User.all
		@bookitems = Bookitem.all

		@users2book = Users2book.new
	end

	def edit

		@users = User.all
		@bookitems = Bookitem.all

		@users2book = Users2book.find(params[:id])
	end


	def create

		@users = User.all
		@bookitems = Bookitem.all
		
		@users2book = Users2book.new(users2book_params)

		if @users2book.save
			if false
				redirect_to @users2book
			end
			redirect_to :back
		else
			render 'new'
		end
	end

	def update

		@users = User.all
		@bookitems = Bookitem.all

		@users2book = Users2book.find(params[:id])
		if @users2book.update(users2book_params)
			redirect_to @users2book
		else
			render 'edit'
		end
	end


	def destroy
		@users2book = Users2book.find(params[:id])
		@users2book.destroy

		redirect_to users2books_path
	end


private 
	def users2book_params
		params.require(:users2book).permit(:userid,:bookid)
		
	end

end
