# README

# Desafio programação - para vaga desenvolvedor Ruby on Rails

# Descrição do projeto

Você recebeu um arquivo CNAB com os dados das movimentações finanaceira de várias lojas. Precisamos criar uma maneira para que estes dados sejam importados para um banco de dados.

Sua tarefa é criar uma interface web que aceite upload do arquivo CNAB, normalize os dados e armazene-os em um banco de dados relacional e exiba essas informações em tela.

# Tarefas

° Acesso com login e senha

° Pagina de upload do arquivo CNAB

° Pagina inicial com todas as transações importadas por loja

° Consultas e alterações de dados através da API

# Tecnologias utilizadas

° Ruby 2.7.1p83

° Rails 6.0.3.4

° Postgres 13.0-1

# Gems mais utilizadas

° gem 'pg'

° gem 'devise'

° gem 'rubocop-rails'

° gem 'rspec-rails'

° gem 'simplecov'

# Iniciar o projeto

**Requisitos necessarios para iniciar o projeto**
 
° Ter instalado Ruby na versão 2.7.1 ou superior, Rails na versão 6.0.3.4 ou superior e Postgres

**Clone o projeto**

° Execute o comando git clone https://github.com/arissonb/desafio-ruby-on-rails.git

**Entre na pasta do projeto**

1.Execute o comando bundle install dentro da pasta do projeto

2.Configure o arquivo  database.yml de acordo com a configuração do seu banco de dados

3.Em seguida rode o comando rails db:seed para popular a tabela Transação

4.E por fim execute o comando **rails s** para subir a aplicação na porta 3000 

**Tela de login**

° O pode ser criado qualquer usuario para logar no sistema 

# API EndPoints:

**Retorna todas as lojas**

° GET: localhost:3000/api/v1/cnab 

**Mostra detalhes de uma loja**

° GET: localhost:3000/api/v1/cnab/:id

**Criar os dados de uma nova loja**

° POST: localhost:3000/api/v1/cnab/

Será necessário passar os parametros e valores de cada chave como descrito abaixo

 {
    "data": "2020-01-03",
    "valor": -115,
    "cpf": "09620676017",
    "cartao": "3648****00995",
    "hora": "23:42:34",
    "dono_loja": "JOÃO MACEDO 2  ",
    "nome_loja": "BAR DO JOÃO 2      \n",
    "transacao_id": 2
  }

**Atualizar os dados de uma nova loja**

° PTCH: localhost:3000/api/v1/cnab/:id

Será necessário passar os parametros e valores de cada chave como descrito abaixo para efetuar a atualização

{
    "data": "2020-01-03",
    "valor": -115,
    "cpf": "09620676017",
    "cartao": "3648****00995",
    "hora": "23:42:34",
    "dono_loja": "JOÃO MACEDO TESTE  ",
    "nome_loja": "BAR DO JOÃO TESTE      \n",
    "transacao_id": 2
  }

**Deletar uma loja**

° DELETE: localhost:3000/api/v1/cnab/:id





