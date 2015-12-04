class MessagepartsController < ApplicationController
  before_action :find_message
  before_action :find_messagepart, only: [:edit, :update, :destroy]
  # before_action :authenticate_speaker!, except: [:index, :show]
  before_action :authenticate_speaker!

  def create
    # @message = Message.find(params[:message_id])
    @messagepart = @message.messageparts.create(messagepart_params)
    @messagepart.speaker_id = current_speaker.id

    if @messagepart.save
      redirect_to message_path(@message)
    else
      render 'new'
    end
  end

  def edit
    # @message = Message.find(params[:message_id])
    # @messagepart = @message.messageparts.find(params[:id])
  end

  def update
    if @messagepart.update(messagepart_params)
      redirect_to message_path(@message)
    else
      render 'edit'
    end



  end

  def destroy
    @messagepart.destroy
    redirect_to message_path(@message)


  end

  private
    def messagepart_params
<<<<<<< HEAD
      params.require(:messagepart).permit(:contentparttitle, :contentpart)
=======
      params.require(:messagepart).permit(:contentparttitle, :contentpart, :picturepart)
>>>>>>> images
    end

    def find_message
      @message = Message.find(params[:message_id])

    end

    def find_messagepart
      @messagepart = @message.messageparts.find(params[:id])

    end


end
