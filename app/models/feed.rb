class Feed < ActiveRecord::Base
  belongs_to :user
  belongs_to :feed
  belongs_to :item
  has_many :feeds
end
