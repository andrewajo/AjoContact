require_dependency "ajo_contact/application_controller"

module AjoContact
  class ContactController < ApplicationController
    layout 'application'
    def index
      @message = Message.new
    end

    def create
      @message = Message.new(params[:message])
      @email = ContactMailer(params[:email_address], params[:subject], params[:message])
      @email.deliver
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
