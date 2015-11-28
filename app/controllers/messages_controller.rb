class MessagesController < ApplicationController
  before_action :find_message, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_speaker!, except: [:index, :show]

  def index
    @messages = Message.all.order("created_at DESC")

  end

  def show

  end

  def new
    @message = current_speaker.messages.build

  end

  def create
    @message = current_speaker.messages.build(message_params)
    if @message.save
    redirect_to messages_path
  else
    render 'new'
  end
    #what user will enter in form will be message_params
  end

  def edit

  end

  def update
    if @message.update(message_params)
      redirect_to message_path
    else
      render 'edit'
    end
  end

  def destroy
    @message.destroy
    redirect_to root_path
  end


  private
    def message_params
      params.require(:message).permit(:title, :description, :content)
    end

    def find_message
      @message = Message.find(params[:id])
    end
end
