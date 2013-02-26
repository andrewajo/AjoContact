require_dependency "ajo_contact/application_controller"

module AjoContact
  class ContactController < ApplicationController
    def index
      @message = Message.new
    end

    def create
      @message = Message.new(params[:message])
      if @message.save
        redirect_to contact_thank_you_path
      else
        render :action => :index
      end
    end

    def thank_you
    end
  end
end
