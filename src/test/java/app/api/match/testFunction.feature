Feature:

Scenario: test function examples
    # * def fun = function(x){ return x * 2 }
    # * print fun(4)

    # * def fun = x => x * 2
    # * def data = [1,2,3]
    # * def result = data.map(fun)
    # * print result

    * def fun = function(x){ return x * 2 }
    * def data = karate.repeat(4, fun)
    * print data


    # * def data = karate.repeat(4, x => ({ name: 'User ' + x }))
    # * print data