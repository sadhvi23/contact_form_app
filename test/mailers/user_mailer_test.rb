require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test 'new contact email' do

    # Set up an email using the user details
    email = UserMailer.with(email: 'info@example.com', contact_info: { locale: 'en', first_name: 'ABC',
                                                                       last_name: 'XYZ', phone_number: '',
                                                                       email: 'xyz@abc.com' }).support_email.deliver_now

    # Check the contents are correct
    assert_equal 'New contact has been created, here are some details', email.subject
    assert_match 'ABC', email.text_part.body.encoded
    assert_match 'XYZ', email.text_part.body.encoded
    assert_match 'xyz@abc.com', email.text_part.body.encoded
  end
end
