class ClockMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.clock_mailer.receipt.subject
  #
  def receipt_get_in(user, clock)
    @user = user
    @clock = clock
    mail to: user.email, subject: "Comprovante de entrada em #{l(@clock.created_at), format: :day}"

  end

  def receipt_get_out(user, clock)
    @user = user
    @clock = clock
    mail to: user.email, subject: "Comprovante de saida em #{l(@clock.created_at), format: :day}"
  end
end
