class PagesController < ApplicationController
  def home
    @messages = Message.all.order("created_at DESC")

  end
end
