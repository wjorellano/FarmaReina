class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :password_archivable, :lockable

  has_many :products

  has_many :sales

  def to_s
    self.email
  end
  
end
