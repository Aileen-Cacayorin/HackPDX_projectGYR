class Student < ActiveRecord::Base
  has_many :reports
  has_and_belongs_to_many :class_groups
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :parent_email

  def full_name
    return self.first_name + " " + self.last_name
  end
end
