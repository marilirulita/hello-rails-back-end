class MessagesController < ApplicationController
  # GET /message
  def index
    @message = Message.find(rand(1..Message.count))

    render json: @message
  end
end
