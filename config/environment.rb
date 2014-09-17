# Load the Rails application.
require File.expand_path('../application', __FILE__)

require 'tlsmail'
Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :enable_starttls_auto => true,
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "gmail.com",
    :user_name            => "subhranka1992@gmail.com", #Your user name
    :password             => "subhrankahitit", # Your password
    :authentication       => :plain
}
# Initialize the Rails application.
Rails.application.initialize!
