Feature: Price Calculator
    As a bus company operator
    I want to calculate the correct ticket price based on travel distance
    So that passengers are charged fairly

    Scenario: Zero distance only charges the initial fee
        Given a customer travels 0 km
        When the price is calculated
        Then the price should be 2500
        
    Scenario: Distance is 50
        Given a customer travels 50 km
        When the price is calculated
        Then the price should be 3000

    Scenario: Distance is 99
        Given a customer travels 99 km
        When the price is calculated
        Then the price should be 3490
        
    Scenario: Distance is 100
        Given a customer travels 100 km
        When the price is calculated
        Then the price should be 3498
        
    Scenario: Distance is 250
        Given a customer travels 250 km
        When the price is calculated
        Then the price should be 4698
        
    Scenario: Distance is 500
        Given a customer travels 500 km
        When the price is calculated
        Then the price should be 6698
        
    Scenario: Distance is 501
        Given a customer travels 501 km
        When the price is calculated
        Then the price should be 6704
        
    Scenario: Distance is 1000
        Given a customer travels 1000 km
        When the price is calculated
        Then the price should be 9698