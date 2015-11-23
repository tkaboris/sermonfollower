class SpeakersController < ApplicationController

  def index
    @speakers = Speaker.all

  end

  def show
    @speaker = Speaker.find(params[:id])

  end

  def new
    @speaker = Speaker.new
  end
end
