module AjoContact
  class ContactMailer < ActionMailer::Base
    default from: "admin@lactantiapurmoments.com"

    def contact_email(from, subject, message, to)
      @message = message
      mail :to => to, :cc => 'andrew@ajoconsulting.com', :subject => "PURMOMENTS #{subject}", :from => from 
    end
  end
end
