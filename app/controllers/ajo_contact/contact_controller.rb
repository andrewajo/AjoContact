require_dependency "ajo_contact/application_controller"

module AjoContact
  class ContactController < ApplicationController
    before_filter :force_non_ssl, :only => :index

    def force_non_ssl
      if request.ssl? && Rails.env.production?
        redirect_to :protocol => 'http://', :status => :moved_permanently
      end
    end
    layout 'application'
    def index
      @message = Message.new
    end

    def create
      @message = Message.new(params[:message])
      @message.user_agent = request.env["HTTP_USER_AGENT"]
      @message.source = 'microsite'
      if !verify_recaptcha
        flash.delete :recaptcha_error
        @message.valid?
        @message.errors.add(:recaptcha, "* Please try again")
        render :action => :index
      else
        if @message.save
          @email = AjoContact::ContactMailer.contact_email(@message.email_address, @message.subject, @message, 'andrew@ajoconsulting.com').deliver
          @email.deliver
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
