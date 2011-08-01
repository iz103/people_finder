require 'spec_helper'

describe Person do
  before do
    @person_1 = Factory(:person, :email => "ck@hotmail.com")
    @person_2 = Factory(:person, :email => "k@gmail.com")
  end
  it "searches for people with gmail accounts" do
    results = Person.search(:email_contains => "gmail").all
    results.should include(@person_1)
  end

end