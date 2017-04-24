class Users2goalsController < ApplicationController
	http_basic_authenticate_with name: "12", password: "12", only: :destroy
	def index
		@users2goals = Users2goal.all

		@users = User.all
		@goals = Goal.all

	end


	def show

		@users = User.all
		@goals = Goal.all

		@users2goal = Users2goal.find(params[:id])
	end



	def new

		@users = User.all
		@goals = Goal.all

		@users2goal = Users2goal.new
	end

	def edit

		@users = User.all
		@goals = Goal.all

		@users2goal = Users2goal.find(params[:id])
	end


	def create

		@users = User.all
		@goals = Goal.all
		
		@users2goal = Users2goal.new(users2goal_params)

		if @users2goal.save
			if false
				redirect_to @users2goal
			end
			redirect_to :back
		else
			render 'new'
		end
	end

	def update

		@users = User.all
		@goals = Goal.all

		@users2goal = Users2goal.find(params[:id])
		if @users2goal.update(users2goal_params)
			redirect_to @users2goal
		else
			render 'edit'
		end
	end


	def destroy
		@users2goal = Users2goal.find(params[:id])
		@users2goal.destroy

		redirect_to users2goals_path
	end


private 
	def users2goal_params
		params.require(:users2goal).permit(:userid,:goalid)
		
	end
end
