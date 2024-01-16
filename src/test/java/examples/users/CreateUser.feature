Feature: Create User
  '
  Scenario: Creating an user
    Given url 'https://reqres.in/api/users'
    * def body = read("../payloads/User.json")
    And request body
    When method post
    Then status 201
    And match $.name == "morpheus"
    And match responseHeaders["Content-Type"][0] contains 'application/json'

  Scenario: Creating an user with random data
    Given url 'https://reqres.in/api/users'
    * def data_faker  = Java.type("examples.utils.RandomGenerator")
    * def r_name = data_faker.getRandomName()
    * def r_job = data_faker.getRandomJobTitle()
    * set body
      | path | value |
      | name | r_name  |
      |job   | r_job   |
    And request body
    When method post
    Then status 201
    And match $.name == r_name
    And match responseHeaders["Content-Type"][0] contains 'application/json'