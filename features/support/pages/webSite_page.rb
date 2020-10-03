class WebSite
  include Capybara::DSL

  def login(user, pass)
    find(".header_user_info").click
    find("#email").set user
    find("#passwd").set pass
    find("#SubmitLogin").click
  end

  def userLogged(user, pass)
    visit "/"
    find(".header_user_info").click
    find("#email").set user
    find("#passwd").set pass
    find("#SubmitLogin").click
    find("#header_logo").click
  end

  def findProduct(product)
    find("#search_query_top").send_keys(product)
    find(".button-search").click
    lista = page.all("ul.product_list li.ajax_block_product")
    return lista
  end
end
