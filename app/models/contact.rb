class Contact < ApplicationRecord
  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: /\A\S+@\S+\z/, message: :email_format}
  validates :message, presence: true
end
