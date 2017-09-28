Given(/^estou na página de busca do Google$/) do
    visit "http://www.google.com.br"
  end
  
  Given(/^digito "([^"]*)"$/) do |pesquisa|
    preenche_busca(pesquisa)
  end
  
  When(/^clico em busca$/) do
    clica_pesquisa_google
  end
  
  Then(/^o Google me devolve os resultados$/) do
    page.has_title? "cucumber"
  end