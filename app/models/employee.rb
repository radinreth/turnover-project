class Employee < ActiveRecord::Base
  has_many :employments, class_name: 'Employment'
  has_many :companies, class_name: 'Company', through: :employments
end
