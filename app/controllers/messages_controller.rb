class MessagesController < ApplicationController
	def show
   	 	@message = Message.find(params[:id])
  	end
	
	def new
	end
	
	def create
		@message = Message.new(message_params)
	 	@message.save
	 	render :url
	end
	 
	def url
		
	end
	private
	def message_params
	    params.require(:message).permit(:text)
	end
	
end
