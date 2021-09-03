class Teacher < ApplicationRecord

  serialize :grades, Array

  validates :name, :age, :gender, :grades, presence: true

  before_save :capitalize_attributes

  enum gender: ['male', 'female']
  GRADES = ['kg', '1st', '2nd', '3rd', '4th', '5th', '6th', '7th']

  # Callback methods
  def capitalize_attributes
    self.name = name.split.map(&:capitalize).join(' ')
  end

end
