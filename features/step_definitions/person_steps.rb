Given /^I have people named (.+)$/ do |names|
  names.split(', ').each do |name|
    Person.create!(:name => name)
  end
end

Given /^the following person records$/ do |table|  
  table.hashes.each do |hash|  
    Factory(:person, hash)
  end  
end

Given /^the following postcode records$/ do |table|  
  table.hashes.each do |hash|  
    Factory(:postcode, hash)  
  end  
end

# When /^I search for people with a hotmail account$/ do
#   Person.search(:email_contains => "hotmail")
# end
# 
# When /^I search for people who are not from postcode (\d+)$/ do |n|
#   p = Postcode.where(:number => n).first.id
#   Person.search(:postcode_id_does_not_equal => p)
# end
# 
# When /^I search for people from postcodes (\d+) or (\d+)$/ do |n1, n2|
#   p1 = Postcode.where(:number => n1).first.id
#   p2 = Postcode.where(:number => n2).first.id
#   Person.search(:postcode_id_in => [p1, p2])
# end
# 
# When /^I search for people from postcode (\d+) with a gmail address$/ do |n1|
#   p1 = Postcode.where(:number => n1).first.id
#   Person.search(:postcode_id_in => p1, :email_contains => "gmail")
# end






