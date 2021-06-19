# frozen_string_literal: true

# class User
class User < ApplicationRecord
  EMAIL_FORMAT = /[^\s]@[^\s]/.freeze
  has_secure_password

  validates :name, presence: true
  validates :email, format: { with: EMAIL_FORMAT }, uniqueness: true
end
