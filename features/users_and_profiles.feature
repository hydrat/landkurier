Feature: Users and Profiles
  In order to buy and sell products
  As an user
  I want to manage my profile
  
  Background:
    Given the following users
    | email                | password |
    | member@landkurier.ch | secret   |
    
  Scenario: See sign up and login link when not registered
    Given I have the email "guest@landkurier.ch"
    And I am not registered
    When I am on the homepage
    Then I should see a link "Registrieren"
    And I should see a link "Anmelden"
    
  Scenario: See sign out link when registered
    Given I am logged in as "member@landkurier.ch" with password "secret"
    When I am on the homepage
    Then I should see a link "Abmelden"
    
  