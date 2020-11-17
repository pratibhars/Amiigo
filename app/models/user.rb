class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :amiibos, dependent: :destroy

  after_create :send_admin_mail

  def send_admin_mail
    UserMailer.send_welcome_email(self).deliver_later
  end 
end
