# frozen_string_literal: true

# class NotificationMailer
class NotificationMailer < ApplicationMailer
  def welcome(name, email)
    @name = name
    @email = email

    mail to: email
  end
end
