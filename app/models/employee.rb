class Employee < ApplicationRecord
  belongs_to :dog
  validates :title, uniqueness: true
  validates_uniqueness_of :alias

  def full_name
    "#{self.first_name} 🤓 #{self.last_name}"
  end

end
