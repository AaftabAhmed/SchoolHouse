class PodRequest < ApplicationRecord
  belongs_to :child
  belongs_to :pod

  enum status: ['pending', 'approved', 'rejected']

end
