class Pod < ApplicationRecord
  belongs_to :teacher
  has_one :address, as: :addressable
  has_many :pod_requests
  has_many :children, through: :pod_requests

end
