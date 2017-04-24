class Users2rewardsController < ApplicationController
	http_basic_authenticate_with name: "12", password: "12", only: :destroy

def index
		@users2rewards = Users2reward.all

		@users = User.all
		@rewards = Reward.all

	end


	def show

		@users = User.all
		@rewards = Reward.all

		@users2reward = Users2reward.find(params[:id])
	end



	def new

		@users = User.all
		@rewards = Reward.all

		@users2reward = Users2reward.new
	end

	def edit

		@users = User.all
		@rewards = Reward.all

		@users2reward = Users2reward.find(params[:id])
	end


	def create

		@users = User.all
		@rewards = Reward.all
		
		@users2reward = Users2reward.new(users2reward_params)

		if @users2reward.save
			if false
				redirect_to @users2reward
			end
			redirect_to :back
		else
			render 'new'
		end
	end

	def update

		@users = User.all
		@rewards = Reward.all

		@users2reward = Users2reward.find(params[:id])
		if @users2reward.update(users2reward_params)
			redirect_to @users2reward
		else
			render 'edit'
		end
	end


	def destroy
		@users2reward = Users2reward.find(params[:id])
		@users2reward.destroy

		redirect_to users2rewards_path
	end


private 
	def users2reward_params
		params.require(:users2reward).permit(:userid,:rewardid)
		
	end


end
