class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirmation.subject
  #
  def confirmation
    @user = params[:user]
    puts "=========== confirmation ==========="
    mail(to: @user.email, subject: "Votre Paylert a été enregistrée ")
    puts "=========== email sent ==========="
  end

  def execution
    @user = params[:user]
    @product = params[:product]
    mail(to: @user.email, subject: "Votre Paylert a été exécutée")
  end

end
