class Customer < ActiveRecord::Base
  # Based on the class name "Customer"
  # AR will guess that the db table name is "customers"

  belongs_to :province # There is a province_id FK in the customers table

  validates :name, :email, :city, presence: true
  validates :email, uniqueness: true
end