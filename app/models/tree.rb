class Tree < ActiveRecord::Base
  # Trees don't track links_out, branches do.
  has_many :links_in, as: :link_in, class_name: :Link

  has_many :branches
  has_one :branch
  
  belongs_to :author

  has_many :children, class_name: :Tree, foreign_key: :parent_id
  belongs_to :parent, class_name: :Tree

  def content
    branches.first.content
  end
end
