class Rating < ApplicationRecord
  belongs_to :store
  validates_presence_of :value, :opnion, :user_name
end
