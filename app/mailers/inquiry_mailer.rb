class InquiryMailer < ActionMailer::Base
  default from: "postmaster@landmhel.ca"

  def new_inquiry_notification(inquiry)

    @inquiry = inquiry
    mail to: "landmhel@gmail.com", subject: "New Inquriy from Landmhel.ca"
  end
end
