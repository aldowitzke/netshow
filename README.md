# Netshow

## Português

Essa aplicação foi criada para o desafio da [Netshow](https://netshow.me/). O objetivo da aplicação é criar uma plataforma de upload de videos, sendo possível se registrar como usuário, visualizar vídeos de outros usuários e administrar seus próprios vídeos.

A aplicação foi construída com as seguintes tecnologias:

- [Ruby on Rails](https://rubyonrails.org/)
- [Devise](https://github.com/heartcombo/devise)
- [VideoJS](https://videojs.com/)
- [Bootstrap](https://getbootstrap.com/)

Para os testes foram usados:
- [RSpec](https://rspec.info/)
- [Shouldmatchers](https://github.com/thoughtbot/shoulda-matchers)
- [FactoryBot](https://github.com/thoughtbot/factory_bot)

### Começando

Para instalar o projeto, rode os seguintes códigos no seu terminal dentro do seu dirétorio de projetos:
```
1) Abra seu terminal e clone o projeto:
git clone https://github.com/aldowitzke/netshow.git
# É possível que seja pedido suas credenciais para clonar o repositório

2) Entre no novo diretório criado
cd netshow

3) Vamos configurar:
bundle install
rails db:setup

4) Rode o servidor:
rails server

5) Abra http://localhost:3000/ em seu navegador

6) Para rodar os testes:
rspec (ou rake)
```

Para acessar a aplicação no Heroku, você pode acessá-la [aqui](https://netshow-aldo.herokuapp.com/).

## English

This application was built for the [Netshow](https://netshow.me/) company challenge. The app goal is to create a platform where an user can register, upload a video, watch other user's videos and manage his own videos.

The web application was built on the following technologies:
- [Ruby on Rails](https://rubyonrails.org/)
- [Devise](https://github.com/heartcombo/devise)
- [VideoJS](https://videojs.com/)
- [Bootstrap](https://getbootstrap.com/)

For testing:
- [RSpec](https://rspec.info/)
- [Shouldmatchers](https://github.com/thoughtbot/shoulda-matchers)
- [FactoryBot](https://github.com/thoughtbot/factory_bot)

### Getting started

Run the following commands inside your projects directory:

```
1) Open your terminal and let's clone the repo:

git clone https://github.com/aldowitzke/netshow.git
# It is possible you will be asked for credentials.

2) Enter your new directory
cd netshow

3) Let's config:
bundle install
rails db:setup

4) Run the server:
rails server

5) Run http://localhost:3000/ on your browser.

5) If you like, run the tests
rspec (or rake)
```

If you want to see it live, you can access it [here](https://netshow-aldo.herokuapp.com/).
