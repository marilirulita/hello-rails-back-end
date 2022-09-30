class MessagesController < ApplicationController
  # GET /message
  def index
    @message = Message.find(rand(1..Message.count))

    render json: { greet: @message.text }, status: :ok
  end
end
