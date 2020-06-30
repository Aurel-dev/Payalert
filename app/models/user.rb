class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :paylerts, dependent: :destroy
  has_many :shops, dependent: :destroy

  def create_stripe_customer_id!
    customer = Stripe::Customer.create
    self.update(stripe_customer_id: customer["id"])
  end

  def credit_card_verified?
    !self.credit_card_id.nil?
  end

end
