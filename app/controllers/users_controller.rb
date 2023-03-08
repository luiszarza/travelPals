class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @attending_activities = @user.attending_activities
    @organized_activities = @user.organized_activities
  end
end
