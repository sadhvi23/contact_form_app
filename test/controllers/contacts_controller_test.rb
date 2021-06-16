
require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  fixtures :contacts

  # Test Get/List method for contacts API
  test 'should get new' do
    get contacts_new_url
    assert_response :success
  end

  # Test Show/Get one method for contacts API
  test 'should show new' do
    get contacts_new_url
    assert_response :success
  end

  # Test Post/Create method for contacts API
  test 'should create post' do
    assert_difference('Contact.count') do
      post :create, contact: { first_name: contacts(:ajackus_one).first_name,
                               last_name: contacts(:ajackus_one).last_name,
                               email: contacts(:ajackus_one).email,
                               phone_number: contacts(:ajackus_one).phone_number,
                               message: contacts(:ajackus_one).message,
                               locale: contacts(:ajackus_one).locale }
    end
    assert_redirected_to contact_path(assigns(:contact))
    assert_equal 'Contact was successfully created.', flash[:notice]
  end
end