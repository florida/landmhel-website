class InquiryMailer < ActionMailer::Base
  default from: "postmaster@landmhel.ca"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.inquiry_mailer.new_inquiry_notification.subject
  #
  def new_inquiry_notification(inquiry)

    @greeting = "Hi"

    mail to: "to@example.org", subject: "New Inquiry"
  end
end

## Sending the email

## InquiryMailer.new_inquiry_notification()
