class Educator < ActiveRecord::Base
  validates :first_name, presence: true, length: { maximum: 50 }
end
