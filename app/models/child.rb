class Child < ApplicationRecord

  belongs_to :user
  has_one :address, as: :addressable
  has_many :pod_requests
  has_many :pods, through: :pod_requests


  validates :name, :age, :gender, :grade, presence: true

  enum gender: ['male', 'female']
  enum grade: ['kg', '1st', '2nd', '3rd', '4th', '5th', '6th', '7th']

end
