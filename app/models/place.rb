class Place < ApplicationRecord
  belongs_to :user
  valdidates :name, presence: true
end
