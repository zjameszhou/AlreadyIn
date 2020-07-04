# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {
  :user_name => 'app176419771@heroku.com',
  :password => 'wxahp1ke2905',
  :domain => 'jz-alreadyin.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}


config.action_mailer.default_url_options = { :host => 'jz-alreadyin.herokuapp.com' }