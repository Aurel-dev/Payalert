class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirmation.subject
  #
  def confirmation
    @user = params[:user]
    puts "=========== confirmation ==========="
    mail(to: @user.email, subject: "Votre PayAlert a été enregistrée ")
    puts "=========== email sent ==========="
  end

  def execution
    puts "=========== before user ==========="
    @user = params[:user]
    puts "=========== after user ==========="
    @paylert = params[:paylert]
    puts "=========== after paylert ==========="
    mail(to: @user.email, subject: "Votre PayAlert a été réalisée")
    puts "=========== email execute sent ==========="
  end

end
