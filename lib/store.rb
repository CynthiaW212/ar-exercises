class Store < ActiveRecord::Base
  # Add the following code directly inside the Store model (class): 
  has_many :employees
  # Stores must always have a name that is a minimum of 3 characters
  # Stores have an annual_revenue that is a number (integer) that must be 0 or more
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0 }

  # BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)
  validate :must_carry_apparel

  def must_carry_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "Store must carry at least one of the men's or women's apparel")
    end
  end

end
