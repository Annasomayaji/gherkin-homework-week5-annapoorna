Feature: Demo Nopcommerce's top menu acceptance criteria
  As a user, I would like to check acceptance criteria of Nopcommerce top menu

  Background: User is on given URL
    When User types URL https://demo.nopcommerce.com
    And User clicks on Enter button
    Then User is on given URL

  Scenario: Verify that user can navigate to books category
    When user is on given URL
    And clicks on the Books tab on Top Menu
    Then User is navigated to Books Category page

  Scenario: Verify that user can see the Books category page with filters and list of products
    When user is on given URL
    And Click on Book tab on Top Menu
    And Check Filters and List tab
    Then Books category page is displayed with filtes and list tabs

  Scenario:Verify that user can see 'Sort by' filter on Books Category page
    Given User is on Books category page
    When User is on Books category page
    And User checks 'Sort By' filter is present
    Then 'Sort By' filter is available on Book Category page

  Scenario: Verify that the user can see 'Display' filter on Book Category page
    Given User is on Books Category page
    When User is on Books Category page
    And User checks 'Display' filter is present
    Then 'Display' filter is available on Book category

  Scenario: Verify that the user can see 'Grid' tab on Book Category page
    Given User is on Books Category page
    When User is on Books Category page
    And Check 'Grid' tab is present
    Then 'Grid' tab is available on Book Category page

  Scenario: Verify that user can see 'List' tab on Book Category page
    Given User is on Books Category page
    When User is on Books Category page
    And Checks 'List' tab is present
    Then 'List' tab is available on Book Category page

  Scenario: Verify that the user can see 'Name:A to Z' selection is present in 'Sort by' filter
    Given User is on Books Category page
    When User is on Books Category page
    And Click on 'Sort by' filter
    And Check that 'Name : A to Z' selection is present
    Then 'NAme: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that the user can see 'Name:A to Z' is the first option in 'Sort by' filter
    Given User is on Book Category page
    When User is on Book Category page
    And Click on 'Sort by' filter
    And Check that 'Name:A to Z' is first in order
    Then 'Name:A to Z' is first option in order

  Scenarion: Verify that the user can see 'Name:A to Z' filter is functioning
  as expected (Note: Products are filtered in alphabetical order)
    Given User is on Books Category page
    When User is on Books Category page
    And Click on 'Sort by' filter
    And Select 'Name:a to Z' filter
    Then All products are displayed in alphabetical order

  Scenario: Verify that the user can see 'Name:Z to A' selection is present in 'Sort by' filter
    Given User is on Books Category page
    When User is on Books Category page
    And Click on 'Sort by' filter
    And Check that 'Name : Z to A' selection is present
    Then 'Name: Z to A' selection is present in 'Sort by' filter

  Scenario: Verify that the user can see 'Price:Low to High' selection is present in 'Sort by' filter
    Given User is on Books Category page
    When User is on Books Category page
    And Click on 'Sort by' filter
    And Check that 'Price: Low to High' selection is present
    Then 'Price:Kow to High' selection is present in 'Sort by' filter





