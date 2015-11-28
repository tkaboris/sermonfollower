class ListenersSpeakersController < ApplicationController

  def create
    listener = Listener.find(params[:listener_id])
    redirect_to listener
  end

  def show

  end

  def new

  end
end
