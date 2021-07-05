class ClockMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.clock_mailer.receipt.subject
  #
  def receipt(user)
    @user = user
    mail to: user.email, subject: "Comprovante de ponto"
  end
end
