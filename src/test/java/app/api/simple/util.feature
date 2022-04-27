Feature:

Background:
* def port = karate.properties['server.port'] || karate.get('serverPort', 8080)
* url 'http://localhost:' + port + '/api/reset'

@ignore
@resetTag
Scenario:
    * print 'reset Tag'
    * method get
    * status 200    
    * match response == { deleted: '#number' }


