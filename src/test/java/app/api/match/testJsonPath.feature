Feature:

Scenario:
* def cat = 
    """
    {
      name: 'Billie',
      kittens: [
        { id: 23, name: 'Bob' },
        { id: 42, name: 'Wild' }
      ]
    }
    """
  # find single kitten where id == 23
  * def bob = $cat.kittens[?(@.id==23)]
  * def found = cat.kittens.find(x => x.id === 23)
  * match found == { id: 23, name: 'Bob' }


* def data = {}
* data.a = 1
* match data == { a: 1 }