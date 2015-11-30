class SpeakersController < ApplicationController
  before_action :authenticate_listener!, only: :subscribe

  def index
    @speakers = Speaker.all

  end

  def show
    @speaker = Speaker.find(params[:id])
    @speakers = Speaker.all
    @messages = @speaker.messages.all

  end

  def new
    @speaker = Speaker.new
  end

    #Assign speaker to listner
    #and checking listener is already subscribed to speaker
    #If listener is already subscribed to speaker then else block will execute


  def subscribe
    if current_listener.assign_speaker(params[:id])
      redirect_to root_path, notice: "Successfully subscribed to speaker"
    else
      redirect_to root_path, notice: "You are already subscribed to speaker"
    end
  end
end
