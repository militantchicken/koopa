class Subscription < ActiveRecord::Base
  belongs_to :user
  has_many :user_subs
  has_many :events
end
