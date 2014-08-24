class Link < ActiveRecord::Base
  belongs_to :link_in, polymorphic: true
  belongs_to :link_out, polymorphic: true
end
