class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sent.subject
  #
  def sent(contact)
    @contact = contact
    mailList = %W(#{@contact.email} "right1121@hotmail.co.jp")

    mail(to: mailList , subject: "Thank you for your contact!")
  end
end
