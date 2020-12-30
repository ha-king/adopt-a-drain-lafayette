# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'Adopt a Drain Lafayette <no-reply@infascination.com>'
  layout 'mailer'
end
