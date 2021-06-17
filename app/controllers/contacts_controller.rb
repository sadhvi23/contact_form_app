class ContactsController < ApplicationController
  protect_from_forgery

  # GET new form
  def new
    I18n.locale = params[:locale]
    @contact = Contact.new
  end

  #  Create contacts
  def create
    @contact = Contact.new(contact_params.merge(locale: I18n.locale))
    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_path, notice: I18n.t('contact.created') }
      else
        format.html { render 'contacts/new' }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def contact_params
    params.permit('first_name', 'last_name', 'email', 'phone_number', 'message', 'locale')
  end
end
