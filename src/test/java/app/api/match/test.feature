Feature:

Scenario: test examples
    # find if { d: 4 } appears at any depth    
* def response = { a: 1, b: { a: 1, b: { c: 3, d: 4 } } }

# * match response.b.b.d == 4

# * def temp = $response..d
# * print temp
# * match temp contains 4

# * match response..d = 4

* def temp = $response..*
* print temp

# doesn't require $response as match automatically consider it returns an array
* match response..* contains deep {d:4} 