# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['USER_NAME'],
  :password => ENV['PSW'],
  :domain => ENV['SMTP_DOMAIN'],
  :address => ENV['SMTP_ADDRESS'],
  :port => ENV['SMTP_PORT'].to_i,
  :authentication => :plain,
  :enable_starttls_auto => true
}