class Company < ActiveRecord::Base
  has_many :employments, class_name: 'Employment'
  has_many :employees, class_name: 'Employee', through: :employments
end
