Feature: Signup
  In order to hire an employee
  As a company
  I want to signup for JobBoard

  Scenario: Successful signup
    Given I represent the PlataformaTec company
     When I go to the home page
      And follow "Signup"
      And signup for the site
     Then I should see "Signup successful"

  Scenario: Unsuccessful signup
    Given I am on the signup page
     When I press "Signup"
     Then I should see "Name can't be blank"
      And I should see "Password can't be blank"
