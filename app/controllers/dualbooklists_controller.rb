class DualbooklistsController < ApplicationController
	def index
		@users2books = Users2book.all
		@users = User.all
		@bookitems = Bookitem.all
		@dualbooklists = Dualbooklist.all

	end


	def show

		@users = User.all
		@bookitems = Bookitem.all
		@users2books = Users2book.all
		@dualbooklist = Dualbooklist.find(params[:id])


	end



	def new

		@users = User.all
		@bookitems = Bookitem.all
		@users2books = Users2book.all
		@dualbooklist = Dualbooklist.new
	end

	def edit

		@users = User.all
		@bookitems = Bookitem.all
		@users2books = Users2book.all

		@dualbooklist = Dualbooklist.find(params[:id])
	end


	def create

		@users = User.all
		@bookitems = Bookitem.all
		@users2books = Users2book.all
		
		@dualbooklist = Dualbooklist.new(dualbooklist_params)

		if @dualbooklist.save
			redirect_to @dualbooklist
		else
			render 'new'
		end
	end

	def update

		@users = User.all
		@bookitems = Bookitem.all

		@dualbooklist = Dualbooklist.find(params[:id])
		if @dualbooklist.update(dualbooklist_params)
			redirect_to @dualbooklist
		else
			render 'edit'
		end
	end


	def destroy
		@dualbooklist = Dualbooklist.find(params[:id])
		@dualbooklist.destroy

		redirect_to dualbooklists_path
	end


private 
	def dualbooklist_params
		params.require(:dualbooklist).permit(:studentone,:studenttwo)
		
	end

end