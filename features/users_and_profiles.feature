Feature: Users Profiles
  In order to buy and sell products
  As an user
  I want to create and manage my profile
  
  Background:
    Given the following users
    | email                | password |
    | member@landkurier.ch | secret   |
    

  Scenario: Create a profile
    Given I am not logged in
    And I am on the Register page
    When I provide my personal data
    Then a user profile should be created
  
  
    
  # Doesn't this belong in a Spec?
  Scenario: See sign up and login link when not registered
    Given I am not registered with the email "guest@landkurier.ch"
    When I am on the homepage
    Then I should see a link "Registrieren"
    And I should see a link "Anmelden"
    
  # Doesn't this belong in a Spec?
  Scenario: See sign out link when registered
    Given I am logged in as "member@landkurier.ch" with password "secret"
    When I am on the homepage
    Then I should see a link "Abmelden"
    
  