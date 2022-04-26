class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @room = Room.new
    @rooms = Room.public_rooms

    @users = User.all_except(current_user)
        @room = Room.new
    @rooms = Room.public_rooms
    render 'index'
  end

  #to show the rooms
  def show
    @single_room = Room.find(params[:id])
    
    @room = Room.new
    @rooms = Room.public_rooms

    @message = Message.new
    @messages = @single_room.messages.order(created_at: :asc)

    @users = User.all_except(current_user)
    render 'index'
  end

  # create room below
  def create
    @room = Room.create(name: params['room']['name'])
  end



end

