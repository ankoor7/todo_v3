class User < ActiveRecord::Base
  has_and_belongs_to_many :lists
# Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :name, :twitter, :role, :email, :password, :password_confirmation, :remember_me
end
