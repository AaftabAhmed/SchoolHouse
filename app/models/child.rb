class Child < ApplicationRecord

  belongs_to :user

  validates :name, :age, :grade, :gender, presence: true

  enum gender: ['boy', 'girl']
  enum grade: ['kg', '1st', '2nd', '3rd', '4th', '5th', '6th', '7th']

end
