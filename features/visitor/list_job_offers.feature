@undone
Feature: List job offers
  In order to find a nice job
  As someone looking for a job
  I want to lits job offers

  Background:
    Given the site has the following job offers:
      | Railer          |
      | Rubyist         |
      | Pythonist       |

  Scenario: List job offers
    When I go to the job offers page
    Then I should see the following job offers:
      | Railer          |
      | Rubyist         |
      | Pythonist       |