class User < ApplicationRecord
  belongs_to :group
  has_one :car
end
