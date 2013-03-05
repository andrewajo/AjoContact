module AjoContact
  class ContactMailer < ActionMailer::Base
    default from: "admin@purmoments.heroku.com"

    def contact_email(from, subject, message)
      @message = message
      mail :to => 'andrew@ajoconsulting.com', :subject => subject
    end
  end
end
