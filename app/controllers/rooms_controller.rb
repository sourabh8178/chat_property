class RoomsController < ApplicationController
  def index
    @current_user = current_user
    redirect_to '/signin' unless @current_user
    @rooms = Room.where(user_id: current_user.id)
    @users = User.where(id: @rooms.map(&:sender_id))
    @room = Room.new

  end

  def create
    @room = Room.create(name: params["room"]["name"])
  end

  def show
    @current_user = current_user
    @single_room = Room.find(params[:id])
    @rooms = Room.where(user_id: current_user.id)
    @users = User.where(id: @rooms.map(&:sender_id))
    @room = Room.new
    @message = Message.new

    render "index"
  end


  
end
