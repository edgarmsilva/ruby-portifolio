Dado("estou logado no sistema na página principal") do
  user = "edgarteste@edgarteste.com"
  pass = "pass12345"
  @mainPage.userLogged(user, pass)
end

Quando("faço uma busca de {string}") do |product|
  @product = product
  @productList = @mainPage.findProduct(@product)
end

Então("devo ver a página de retorno exibindo o termo pesquisado") do
  term = find(".lighter").text
  expect(term.downcase).to have_content @product.downcase
end

Então("a lista de produtos correspondentes") do
  lista = page.all("ul.product_list li.ajax_block_product")
  lista.each do |each|
    product = each.find(".product-name").text
    # puts(product)
    expect(product.downcase).to have_content @product.downcase
  end
end

Quando("clico no botão {string} de um dos itens retornados") do |button_text|
  expect(@productList[0].find(".ajax_add_to_cart_button").text).to eql button_text
  @productList[0].find(".ajax_add_to_cart_button").click
end

Então("devo ver o popup confirmando a inclusão do item escolhido informando a quantidade {string}") do |product_quantity|
end

Então("o valor total correspondente") do
end

Então("os botões do popup de inclusão:") do |table|
  data = table.raw
  data.each do |btn|
    expect(page).to have_selector(".button-container [title='#{btn[0]}']", visible: true)
  end
end
