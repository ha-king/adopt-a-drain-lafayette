# frozen_string_literal: true

# Load the Rails application.
require File.expand_path('application', __dir__)

ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: '25',
  authentication: :plain,
  user_name: 'apikey',
  password: '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',
  domain: 'infascination.com',
  enable_starttls_auto: true,
}

# this is just a test api key, it is not real

# Initialize the Rails application.
Rails.application.initialize!
