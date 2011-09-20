Feature: Post job offer
  In order to hire an employee
  As a company
  I want to post a job offer

  Scenario: Successful job offer post
    Given I am logged in
     When I follow "Post a job offer"
      And fill in "Title" with "Super Railer"
      And fill in "Description" with "That's a special job for you"
      And press "Create Job offer"
     Then I should see "Job offer created."

  Scenario: Unsucessful job offer post
    Given I am logged in
     When I follow "Post a job offer"
      And press "Create Job offer"
     Then I should see "Title can't be blank"
      And I should see "Description can't be blank"