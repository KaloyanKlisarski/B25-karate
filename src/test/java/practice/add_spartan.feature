
  Feature: Add new spartan

    Background:
      * url spartan_base_url

    Scenario: Variables practice
      * def automationTool = "karate"
      * def num1 = 10
      * def num2 = 20
      * print "tool name = " , automationTool
      * print "sum = ", num1 + num2
      * def payload = {name: 'Karate', gender: 'Male', phone: 3214567931}
      * print "json request body = ", payload
      * match payload ==
      """
    {
    "name": "Karate",
    "gender": "Male",
    "phone": 3214567931
    }
      """

      Scenario: Add new spartan
        Given path "spartans"
        And header Content-Type = "application/json"
        #add request json body
        And request {name: 'Box', gender: 'Male', phone: 3014567931}
        And method POST
        And status 201
        * print response
        * print "message = " , response.success
        * print "generated id = " , response.data.id
        # extract id into a variable and send get request
        * def id = response.data.id
        Given path "spartans", id
        And method GET
        Then status 200
        And match response.name == "Box"
