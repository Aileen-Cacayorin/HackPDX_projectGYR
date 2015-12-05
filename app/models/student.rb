class Student < ActiveRecord::Base
  belongs_to :teacher
  has_many :reports

  def full_name
    return self.first_name + " " + self.last_name
  end
end
