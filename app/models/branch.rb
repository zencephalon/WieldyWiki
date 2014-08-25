class Branch < ActiveRecord::Base
  belongs_to :tree
  belongs_to :author

  has_many :links_in, as: :link_in, class_name: :Link
  has_many :links_out, as: :link_out, class_name: :Link
end
