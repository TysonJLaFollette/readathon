class GoalsController < ApplicationController
	http_basic_authenticate_with name: "12", password: "12", only: :destroy
	def index
		@goals = Goal.all
	end


	def show 
		@goal = Goal.find(params[:id])
	end


	def new
		@goal = Goal.new
	end


	def edit
		@goal = Goal.find(params[:id])		
	end


	def create
		@goal = Goal.new(goal_params)

		if @goal.save

			if false
				redirect_to @goal
			end
			redirect_to goals_path
		else
			render 'new'
		end
	end


	def update
  		@goal = Goal.find(params[:id])

  		if @goal.update(goal_params)
  			redirect_to @goal
  		else
  			render 'edit'
  		end
 

	end
	

	def destroy
		@goal = Goal.find(params[:id])
		@goal.destroy

		redirect_to goals_path
	end


	private
	def goal_params
		params.require(:goal).permit(:name,:text,:is_class)
	end

end
