Given(/^estou na página de busca do Google$/) do
    visit "http://www.google.com.br"
  end
  
  Given(/^digito 'cucumber'$/) do
    fill_in("lst-ib",with:"cucumber")
  end
  
  When(/^clico em busca$/) do
    click_on "Pesquisa Google"
  end
  
  Then(/^o Google me devolve os resultados$/) do
    page.has_title? "cucumber"
  end