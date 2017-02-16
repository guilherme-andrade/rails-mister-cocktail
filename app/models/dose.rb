class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :ingredient, uniqueness: { scope: :cocktail, message: "A cocktail should not have repeated ingredients."}
  validates_presence_of :description, :on => :create, :message => "can't be blank"
end
