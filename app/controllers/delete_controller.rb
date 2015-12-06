class DeleteController < ApplicationController

	def message
		message = Message.find(params[:id])
		message.remove_picture!
		message.save
		redirect_to "/messages/"+message.id.to_s
	end

	def messagepart
		messagepart = Messagepart.find(params[:id])
		messagepart.remove_picturepart!
		messagepart.save
		redirect_to "/messages"
	end
end
