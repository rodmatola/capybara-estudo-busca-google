def preenche_busca(chave)
    fill_in("lst-ib",with: chave)
end

def clica_pesquisa_google
    click_on "Pesquisa Google"
end