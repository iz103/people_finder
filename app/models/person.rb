class Person < ActiveRecord::Base
  belongs_to :postcode
  
  EMAILS = %w[gmail hotmail]
end
