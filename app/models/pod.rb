class Pod < ApplicationRecord
  belongs_to :teacher
  has_one :address, as: :addressable
end
