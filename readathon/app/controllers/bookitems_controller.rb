class BookitemsController < ApplicationController




	def index
		@bookitems = Bookitem.all
	end


	def show 
		@bookitem = Bookitem.find(params[:id])
	end




	def new
		@bookitem  = Bookitem.new
	end

	def edit
		@bookitem  = Bookitem.find(params[:id])
	end

	def create
		@bookitem = Bookitem.new(bookitem_params)

		if @bookitem.save
			redirect_to @bookitem
		else
			render 'new'
		end
	end


	def update
  		@bookitem = Bookitem.find(params[:id])
 
	  	if @bookitem.update(bookitem_params)
   	 		redirect_to @bookitem
  		else
   	 		render 'edit'
  		end
	end

	def destroy
		@bookitem = Bookitem.find(params[:id])
		@bookitem.destroy
		
		redirect_to bookitems_path
	end


	private
	def bookitem_params
		params.require(:bookitem).permit(:title, :author, :pages)
	end

end
