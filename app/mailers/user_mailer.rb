class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirmation.subject
  #
  def confirmation
    @user = params[:user]
    mail(to: @user.email, subject: "Votre Paylert a été enregistrée ")
    # @greeting = "Hi"

    # mail to: "to@example.org"
  end

  def execution
    @user = params[:user]
    mail(to: @user.email, subject: "Votre Paylert a été exécutée")
  end

end
