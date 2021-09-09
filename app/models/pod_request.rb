class PodRequest < ApplicationRecord
  belongs_to :child
  belongs_to :pod

  validates :child_id, uniqueness: { scope: :pod_id }

  enum status: ['pending', 'approved', 'rejected']

end
