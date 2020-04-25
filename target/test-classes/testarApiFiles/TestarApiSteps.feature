Feature: Validar API do Star Wars 
	Como um desafio
	Eu quero validar a api do Star Wars
	E utilizar os endpoints 'planets' e 'people'
	Para garantir que a estrutura dos campos sejam validados
	
Scenario: Validar o metodo GET do endpoint people
	Given url 'https://swapi.dev/api/people/1/' 
	And request {"name": "Luke Skywalker", "height": "172", "mass": "77", "hair_color": "blond", "skin_color": "fair", "eye_color": "blue", "birth_year": "19BBY", "gender": "male"} 
	When method GET 
	Then status 200 
	Then print response

Scenario: Validar o metodo GET do endpoint planets
	Given url 'https://swapi.dev/api/planets/1/'
	And request {"name": "Tatooine", "rotation_period": "23", "orbital_period": "304", "diameter": "10465", "climate": "arid", "gravity": "1 standard", "terrain": "desert", "surface_water": "1", "population": "200000"}
	When method GET
	Then status 200
	Then print response