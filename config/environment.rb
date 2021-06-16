# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => "sadhvi.tripathi2304@gmail.com",
  :password => "Sai23baba@",
  :domain => "gmail.com",
  :address => "smtp.gmail.com",
  :port => 587.to_i,
  :authentication => :plain,
  :enable_starttls_auto => true,
}