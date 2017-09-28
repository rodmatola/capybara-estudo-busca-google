Given(/^estou na página de busca do Google$/) do
    visit "http://www.google.com.br"
  end
  
  Given(/^digito "([^"]*)"$/) do |pesquisa|
    fill_in("lst-ib",with: pesquisa)
  end
  
  When(/^clico em busca$/) do
    click_on "Pesquisa Google"
  end
  
  Then(/^o Google me devolve os resultados$/) do
    page.has_title? "cucumber"
  end