class Item < ActiveRecord::Base
  has_one :feed
  validates_formatting_of :link, using: :url
end
