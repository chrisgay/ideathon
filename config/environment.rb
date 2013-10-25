# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Gallery2::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'cgay2013',
  :password => 'Hk8nf4e8',
  :domain => 'avegourmet.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
