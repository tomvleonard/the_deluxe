class Admin < ApplicationRecord
  [ :username, :password ].each do |attr|
    validates attr, presence: true
  end
end
