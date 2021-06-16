require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  fixtures :contacts

  # Test contacts
  def test_contact
    ajackus_one = Contact.new first_name: contacts(:ajackus_one).first_name,
                              last_name: contacts(:ajackus_one).last_name,
                              email: contacts(:ajackus_one).email,
                              phone_number: contacts(:ajackus_one).phone_number,
                              message: contacts(:ajackus_one).message,
                              locale: contacts(:ajackus_one).locale
    # Contact creation testing
    assert ajackus_one.save

    # Contact find testing
    ajackus_one_copy = Contact.find(ajackus_one.id)

    # Testing the ability to create and read a database record
    assert_equal ajackus_one.email, ajackus_one_copy.email

    # Testing update by assigning a new email
    ajackus_one.email = 'alley@test.com'
    assert ajackus_one.save

    # Testing the ability to delete a record
    assert ajackus_one.destroy
  end
end