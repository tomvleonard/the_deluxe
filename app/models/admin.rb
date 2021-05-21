class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
    :recoverable,
    :rememberable,
    :validatable

  [ :email, :password ].each do |attr|
    validates attr, presence: true
  end
end
