class PagesController < ApplicationController
  #skip_before_action :authenticate_listener!, only: [:index]
  def home
    @messages = Message.all.order("created_at DESC")
    @speakers = Speaker.all
  end
end
