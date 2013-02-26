module AjoContact
  class Message < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :email_address, :subject, :message
    validates_presence_of :first_name, :message => I18n.t('contact.form.error.first_name')
    validates_presence_of :last_name, :message => I18n.t('contact.form.error.last_name')
    validates_presence_of :email_address, :message => I18n.t('contact.form.error.email_address')
    validates_presence_of :subject, :message => I18n.t('contact.form.error.subject')
    validates_presence_of :message, :message => I18n.t('contact.form.error.message')

  end
end
