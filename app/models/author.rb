class Author < ActiveRecord::Base
  has_many :trees
  has_many :branches

  has_secure_password
end
