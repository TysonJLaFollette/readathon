class RewardsController < ApplicationController
	def index
		@rewards = Reward.all
	end


	def show 
		@reward = Reward.find(params[:id])
	end


	def new
		@reward = Reward.new
	end


	def edit
		@reward = Reward.find(params[:id])
	end


	def create
		@reward = Reward.new(reward_params)

		if @reward.save
			
			if false
				redirect_to @reward
			end
			redirect_to rewards_path
		else
			render 'new'
		end
	end


	def update
		@reward = Reward.find(params[:id])

		if @reward.update(reward_params)
			redirect_to @reward
		else
			render 'edit'
		end
	end


	def destroy
		@reward = Reward.find(params[:id])
		@reward.destroy

		redirect_to rewards_path
	end


	private
	def reward_params
		params.require(:reward).permit(:name,:text,:is_class)
	end

end
