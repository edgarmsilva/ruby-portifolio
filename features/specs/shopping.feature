#language: pt

# Automação 
# Autor: Edgar Moreira da Silva
# 03/20/2020

Funcionalidade: Shopping
    Para que eu possa realizar uma compra
    Sendo um usuário logado

Contexto: Usuário Logado
        Dado estou logado no sistema na página principal
    
Cenário: Fazer uma busca de um produto
    Quando faço uma busca de "dress"
    Então devo ver a página de retorno exibindo o termo pesquisado
    E a lista de produtos correspondentes

@shopping
Cenário: Adicionar um item ao carrinho de compras
    Quando faço uma busca de "dress"    
    E clico no botão "Add to cart" de um dos itens retornados
    Então devo ver o popup confirmando a inclusão do item escolhido informando a quantidade "1" 
    E o valor total correspondente
    E os botões do popup de inclusão:
        | Continue shopping    |
        | Proceed to checkout |




