busca = BuscaGoogle.new

Given(/^estou na página de busca do Google$/) do
    busca.abrir_pagina
  end
  
  Given(/^digito "([^"]*)"$/) do |pesquisa|
    busca.buscar(pesquisa)
  end
  
  When(/^clico em busca$/) do
    busca.submit
  end
  
  Then(/^o Google me devolve os resultados sobre "([^"]*)"$/) do |pesquisa|
    busca.buscou?(pesquisa)
  end