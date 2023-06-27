class Employee < ActiveRecord::Base
  # Add the following code directly inside the Employee model (class): 
  belongs_to :store

  # Employees must always have a first name present
  # Employees must always have a last name present
  # Employees have a hourly_rate that is a number (integer) between 40 and 200
  # Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true


end
