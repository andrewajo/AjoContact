module AjoContact
  class ContactMailer < ActionMailer::Base
    default from: "admin@purmoments.heroku.com"

    def contact_email(from, subject, message, to)
      @message = message
      mail :to => 'andrew@ajoconsulting.com', :subject => "PURMOMENTS #{subject}", :from => from, :to => to
    end
  end
end
