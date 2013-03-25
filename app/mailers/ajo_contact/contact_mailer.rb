module AjoContact
  class ContactMailer < ActionMailer::Base
    default from: "admin@lactantiapurmoments.com"

    def contact_email(from, subject, message, to)
      @message = message
      mail :to => 'andrew@ajoconsulting.com, parmalat-customerservice@bluebandmedia.com', :subject => "PURMOMENTS #{subject}", :from => from, :to => to
    end
  end
end
