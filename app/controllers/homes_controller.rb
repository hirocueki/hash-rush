class HomesController < ApplicationController
  def create
    message = params[:message]
    redirect_to root_url(message: URI.encode(message))
  end

  def code
    message = params[:message]
    if message.present?
      @hash_tag = URI.decode(message)
      @request_url = "https://twitter.com/intent/tweet?text="+message
    end
  end
end
