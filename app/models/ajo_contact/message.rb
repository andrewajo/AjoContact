module AjoContact
  class Message < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :email_address, :subject, :message, :user_agent, :source
    validates_presence_of :first_name
    validates_presence_of :last_name
    validates_presence_of :email_address
    validates_format_of :email_address, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
    validates_presence_of :subject
    validates_presence_of :message

  end
end
