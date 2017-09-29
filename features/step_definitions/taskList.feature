Feature: Busca Google

Background: 
    Given estou na página de busca do Google

Scenario: Busca
    And digito "cucumber"
    When clico em busca
    Then o Google me devolve os resultados sobre "cucumber"