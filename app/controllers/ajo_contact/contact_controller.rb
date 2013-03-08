require_dependency "ajo_contact/application_controller"

module AjoContact
  class ContactController < ApplicationController
    layout 'application'
    def index
      @message = Message.new
    end

    def create
      @message = Message.new(params[:message])
      if !verify_recaptcha
        flash.delete :recaptcha_error
        @message.valid?
        @message.errors.add(:recaptcha, "* Please try again")
        respond_with(@message)
      else
        @email = ContactMailer.contact_email(params[:email_address], params[:subject], params[:message][:message]).deliver
        @email.deliver
        if @message.save
          redirect_to contact_thank_you_path
        else
          render :action => :index
        end
      end
    end

    def thank_you
    end
  end
end
