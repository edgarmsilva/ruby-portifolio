#language: pt

# Automação QA Challenge - AutomationPractice
# Autor: Edgar Moreira da Silva
# 26/07/2018

Funcionalidade: Login
    Para que eu possa acessar minha conta
    Sendo um usuário cadastrado
    Posso logar no sistema


Contexto: Página Inicial
        Dado que eu acessei a página inicial

    @login @Logout
    Cenario: Login do usuário

        Quando faço login com "edgarteste@edgarteste.com" e "pass12345"
        Então sou autenticado com sucesso
        E sou redirecionado para a tela da minha conta com a mensagem "Welcome to your account."

    Esquema do Cenário: Logins inválidos
        Quando faço login com "<email>" e "<senha>"
        Então devo ver a mensagem de alerta "<alerta>"

        Exemplos: 
        | email                     | senha     | alerta                     |
        | edgarteste@edgarteste.com | 1234      | Invalid password.          |
        | testeed321@testeed.com    | pass12345 | Authentication failed.     |
        | testeed&testeed.com       | pass12345 | Invalid email address.     |
        |                           | pass12345 | An email address required. |
        | edgarteste@edgarteste.com |           | Password is required.      |

 


        
    
