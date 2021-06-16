class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  # Change language of email
  def set_locale(locale)
    I18n.locale = locale
  end
end
