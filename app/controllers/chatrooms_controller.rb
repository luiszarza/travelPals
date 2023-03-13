class ChatroomsController < ApplicationController
  def index
    @chatrooms = current_user.chatrooms
    @chatroom_names = {}

    @chatrooms.each do |chatroom|
      if chatroom.requester == current_user
        @chatroom_names[chatroom.id] = chatroom.recipient.name
      elsif chatroom.recipient == current_user
        @chatroom_names[chatroom.id] = chatroom.requester.name
      end
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
  end

  def new_chatroom_with_user
    @user = User.find(params[:user_id])
    @chatroom = Chatroom.new(requester: current_user, recipient: @user)
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render :new
    end
  end

  def create
    # clicking the chat button on the user profile page will redirect to this action
    # and create a new chatroom with the current user and the user they clicked on
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.requester = current_user
    @chatroom.recipient = User.find(params[:user_id])
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render :new
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
