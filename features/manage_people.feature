@people

Feature: Find People
  In order to manage contacts
  As an admin
  I want to search for people
  
  Background:
    Given the following postcode records
      |id|number|suburb|
      |1|2000|Sydney CBD|
      |2|2010|Surry Hills|
      |3|2060|North Sydney|
      |4|2061|Kirribilli|
      |5|2065|Crows Nest|
    Given the following person records
      | name           | postcode_id | email        |
      | Cody Kinnaman  |1            |ck@hotmail.com|
      |Christian Hoying|2            |ch@gmail.com  |
      |Max Moshier     |3            |mm@gmail.com  |
      |Noreen Zacharias|4            |nz@yahoo.com.au| 
      |Darren Radovich |5            |dr@yahoo.com.au|
      |Erik Pendergast |1            |ep@gmail.co.nz |
      |Ted Kuehne      |2            |tk@hotmail.co.nz|
      |Clinton Banegas |3            |cb@yahoo.com    |
      |Neil Ancona     |4            |na@gmail.com.au |
      |Clare Straube   |5            |cs@yahoo.co.nz  |  
  
  Scenario: People with a hotmail address
    When I go to the list of people
    # Then show me the page
    And select "hotmail" from "search_email_contains"
    And I press "search_submit"
    Then I should see "Cody Kinnaman"
    And I should see "Ted Kuehne"
    And I should not see "Noreen Zacharias"
    
  Scenario: People who are not from postcode 2000
    When I go to the list of people
    And I check "search_postcode_id_not_in_1"
    And I press "search_submit"
    Then I should see "Christian Hoying" 
    And I should see "Max Moshier"
    And I should see "Noreen Zacharias" 
    And I should see "Darren Radovich"
    And I should see "Ted Kuehne"
    And I should see "Clinton Banegas"
    And I should see "Neil Ancona"
    And I should see "Clare Straube"
    And I should not see "Cody Kinnaman"
    
  Scenario: People from postcodes 2000 or 2010
    When I go to the list of people
    And I check "search_postcode_id_in_1"
    And I check "search_postcode_id_in_2"
    And I press "search_submit"
    Then I should see "Cody Kinnaman"
    And I should see "Christian Hoying"
    And I should see "Erik Pendergast"
    And I should see "Ted Kuehne"
    And I should not see "Max Moshier"
    
  Scenario: People from postcode 2010 with a gmail address
    When I go to the list of people
    And select "gmail" from "search_email_contains"
    And I check "search_postcode_id_in_2"
    And I press "search_submit"
    Then I should see "Christian Hoying"
    And I should not see "Noreen Zacharias"
    
  Scenario: People from postcode 2060, 2061 or 2065 who do not use gmail
    When I go to the list of people
    And I check "search_postcode_id_in_3"  
    And I check "search_postcode_id_in_4"    
    And I check "search_postcode_id_in_5"
    And I select "gmail" from "search_email_does_not_contain"
    And I press "search_submit"
    Then I should see "Noreen Zacharias"
    And I should see "Darren Radovich"
    And I should see "Clinton Banegas"
    And I should see "Clare Straube"
    And I should not see "Cody Kinnaman"