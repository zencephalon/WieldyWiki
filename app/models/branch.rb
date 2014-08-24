class Branch < ActiveRecord::Base
  belongs_to :tree

  has_many :links_in, as: :link_in
  has_many :links_out, as: :link_out
end
