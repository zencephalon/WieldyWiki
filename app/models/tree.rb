class Tree < ActiveRecord::Base
  # Trees don't track links_out, branches do.
  has_many :links_in, as: :link_in
  has_many :branches
  has_one :branch
end
