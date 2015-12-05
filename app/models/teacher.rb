class Teacher < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :students
  has_many :reports
  accepts_nested_attributes_for :reports

  def full_name
    return self.first_name + " " + self.last_name
  end
end
