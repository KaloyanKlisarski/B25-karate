Feature: We can use java classes from karate feature file

  Scenario: Call Utils.getName() method
    # assign utils class object into utils variable
    * def Utils = Java.type("practice.Utils")
    # call getName method
    * print "Name = ", Utils.getName()
    # declare variable of String type
    * def str = Java.type("java.lang.String")
    * def name = new str(Utils.getName())
    * print name.toUpperCase()
