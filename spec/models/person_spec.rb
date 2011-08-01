require 'spec_helper'

describe Person do
  before do
    @person_1 = Factory(:person, :email => "ck@hotmail.com")
    @person_2 = Factory(:person, :email => "k@gmail.com")
    @postcode_ids = [3,4,5]
  end
  it "searches for people with gmail accounts" do
    results = Person.search(:email_contains => "gmail").all
    results.should include(@person_1)
  end

  it "People from postcode 2060, 2061 or 2065 who do not use gmail" do
    results = Person.search(:email_does_not_contain => "gmail", :postcode_id_in => [3,4,5]).all.collect {|p| p.name}
    results.should == ["Noreen Zacharias", "Darren Radovich", "Clinton Banegas", "Clare Straube"]
  end
  

end