Feature: Create User
  '
  Scenario: Creating an user
    Given url 'https://reqres.in/api/users'
    And request {"name":"jack","job":"agent"}
    When method post
    Then status 201