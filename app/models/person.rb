class Person < ActiveRecord::Base
  belongs_to :postcode
  
  EMAILS = %w[gmail hotmail]
  POSTCODE_COLLECTION = [["2000, Sydney CBD", 1], ["2010, Surry Hills", 2], ["2060, North Sydney", 3], ["2061, Kirribilli", 4], ["2065, Crows Nest", 5]]
end
