# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/confirmation
  def confirmation
    user = User.first
    product = Product.first
    UserMailer.with(user: user).confirmation
  end

  def execution
    @user = params[:user]
    @paylert = params[:paylert]
    puts "==================="

    p @paylert
    UserMailer.execution
  end

end
