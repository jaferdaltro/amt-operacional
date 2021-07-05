# Preview all emails at http://localhost:3000/rails/mailers/clock_mailer
class ClockMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/clock_mailer/receipt
  def receipt
    ClockMailer.receipt
  end

end
