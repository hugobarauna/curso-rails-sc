@undone
Feature: Login
  In order to hire an employee
  As a company
  I want to login into the JobBoard web app

  Background:
    Given the PlataformaTec company registered for the JobBoard web appp

  Scenario: Successful login
    Given I represent the PlataformaTec company
     When I go to the home page
      And follow "Login"
      And fill in the login form with my credentials
      And press "Login"
     Then I should see "Welcome!"
      And I should be on the dashboard page

  Scenario: Unsuccessful login
    Given I am on the login page
     When I fill in "Username" with "plataformatec"
      And fill in "Password" with "wrongpassword"
      And press "Login"
     Then I should see "Invalid username/password combination"