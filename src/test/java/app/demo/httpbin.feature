Feature: Simple Requests
Scenario:Simple Post
    * url 'https://httpbin.org/anything'
    * request { myKey: 'myValue' }
    * method post
    * status 200
    * match response contains { json: { myKey: 'myValue' } }
    * path response.json.myKey
    * method get
    * status 200