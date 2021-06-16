class UserMailer < ApplicationMailer

  # Send email to user when contact has been create
  def notify_on_contact_creation
    @email = params[:email]
    @contact_info = params[:contact_info]
    set_locale(@contact_info.locale)
    mail(to: @email, subject: default_i18n_subject)
  end
end
