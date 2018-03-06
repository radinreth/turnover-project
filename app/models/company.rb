class Company < ActiveRecord::Base
  has_many :employments, class_name: 'Employment', dependent: :destroy
  has_many :employees, class_name: 'Employee', through: :employments
end
