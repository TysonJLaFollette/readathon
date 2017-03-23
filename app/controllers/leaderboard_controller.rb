class LeaderboardController < ApplicationController
  def index
	@leaders = User.all.order(pages_read: :desc).first(5)
  end
end
