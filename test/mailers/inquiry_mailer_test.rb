require "test_helper"

class InquiryMailerTest < ActionMailer::TestCase
  test "new_inquiry_notification" do
    mail = InquiryMailer.new_inquiry_notification
    assert_equal "New inquiry notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
