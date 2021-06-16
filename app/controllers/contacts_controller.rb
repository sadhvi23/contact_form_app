class ContactsController < ApplicationController
  protect_from_forgery
  before_action :set_contact, only: %i[show]

  # GET /contacts or /contacts.json
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1 or /contacts/1.json
  def show
    @contact
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_path, notice: I18n.t('contact.created') }
      else
        format.html { redirect_to root_path, alert: I18n.t('contact.not_created') }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.permit('first_name', 'last_name', 'email', 'phone_number', 'message', 'locale')
    end
end
