class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
  end

  def new
  end

  def create
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
