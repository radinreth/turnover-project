class Employee < ActiveRecord::Base
  has_many :employments, class_name: 'Employment', dependent: :destroy
  has_many :companies, class_name: 'Company', through: :employments
end
