class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # def address
  #   return "#{self.street}, #{self.zip} #{self.city}"
  # end
end
