class ChatroomsController < ApplicationController
  def index
    @chatrooms = current_user.chatrooms
    @chatroom_info = {}

    @chatrooms.each do |chatroom|
      if chatroom.requester == current_user
        @chatroom_info[chatroom.id] = {
          user_name: chatroom.recipient.name,
          photo_key: chatroom.recipient.photo.key,
          date: chatroom.updated_at.strftime("%I:%M %P")
        }
      elsif chatroom.recipient == current_user
        @chatroom_info[chatroom.id] = {
          name: chatroom.requester.name,
          photo_key: chatroom.requester.photo.key,
          date: chatroom.updated_at.strftime("%I:%M %P")
        }
      end
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @chatroom_with_user = @chatroom.requester == current_user ? @chatroom.recipient : @chatroom.requester
    @message = Message.new
  end

  def new
  end

  def new_chatroom_with_user
    @user = User.find(params[:user_id])
    @chatroom = Chatroom.where(requester: current_user).where(recipient: @user)
    if @chatroom.empty?
      @chatroom = Chatroom.new(requester: current_user, recipient: @user)
      @chatroom.save
    else
      @chatroom = @chatroom.first
    end
    redirect_to chatroom_path(@chatroom)
  end

  def create
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
