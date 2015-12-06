class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  has_many :pins
  has_many :litters
  has_many :comments

  ADMIN = {
    0 => false,
    1 => true,
  }
end
