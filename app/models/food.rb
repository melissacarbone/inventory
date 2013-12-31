class Food < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :quantity

  validates_numericality_of :quantity

  validates :title, format: { with: /[a-zA-Z]+/}
end
