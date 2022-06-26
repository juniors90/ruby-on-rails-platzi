# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Models

```
rails g model Pet name:string breed:string
rails db:migrate
```

* Rails Console

```
C:\mi_app>rails console
Loading development environment (Rails 7.0.3)
irb(main):001:0> Pet.create name: 'lulu', breed: 'pug'
irb(main):001:0> Pet.first
```

* Credenciales:

Ahora Rails 6 podemos agregar credenciales para múltiples
entornos y en cada uno se encontraran sus propias claves
de cifrado.

**Credenciales globales**

Para cualquier entorno, Rails detecta automáticamente qué
conjunto de credenciales utilizar. Las credenciales específicas
del entorno tendrán prioridad sobre las credenciales globales.
De no encontrarse credenciales específicas del entorno Rails
utilizará las credenciales globales y la clave maestra que
están representadas por los siguientes archivos:

- `config/credentials.yml.enc`
- `config/master.key` (Archivo a compartir con nuestro equipo)

**Cree credenciales espesifico (producción)**

Ejecutaremos el siguiente comando:

```
EDITOR=nano rails credentials:edit --environment production
```

Este comando abrirá el editor de texto seleccionado y nos
permitirá crear las credenciales (formato, clave - valor)
que consideremos necesarios, ademas nos creara los siguientes
archivos

- `config/credentials/production.key` (Archivo a compartir con el
equipo que tenga acceso al entorno producción)

- `config/credentials/production.yml.enc`

**Usando las credenciales en Rails**

Para desarrollo:

```
rails c
Rails.application.credentials.config # nos mostrara todo el contenido
Rails.application.credentials.aws # nos mostrara el valor de la clave aws
```

Para producción:

```
RAILS_ENV=production rails c
Rails.application.credentials.config # nos mostrara todo el contenido
Rails.application.credentials.aws # nos mostrara el valor de la clave aws
```

```
C:\mi_aap> rails c
irb(main):002:0> Rails.application.credentials.hello
```

[Rails 6 Credencial](https://blog.saeloun.com/2019/10/10/rails-6-adds-support-for-multi-environment-credentials.html)

[The twelve-factor app](https://12factor.net/)

* Assets

Lecturas recomendadas

[Curso de Webpack | Platzi](https://platzi.com/clases/webpack/)

[Curso de Sass](https://platzi.com/clases/sass/)

[Curso de Preprocesadores](https://platzi.com/clases/preprocesadores/)

[The Asset Pipeline — Ruby on Rails Guides](https://guides.rubyonrails.org/asset_pipeline.html)

[The Asset Pipeline](https://guides.rubyonrails.org/asset_pipeline.html)


* Scaffold

```
rails g scaffold Book title:string author:string description:string isbn:string pages_count:integer
```

[Ruby on Rails Guides: Rails Routing from the Outside In](https://guides.rubyonrails.org/routing.html#resources-on-the-web)

- Cómo funcionan las migraciones

```
C:\mi_app>rails db:migrate:status

database: db/development.sqlite3

 Status   Migration ID    Migration Name
--------------------------------------------------
   up     20220626174812  Create pets
   up     20220626193521  Create books
```

- Optimiza tu código con HAML

[Haml](http://haml.info/)

[GitHub - haml/haml: HTML Abstraction Markup Language - A Markup Haiku](https://github.com/haml/haml)

[GitHub - k0kubun/hamlit: High Performance Haml Implementation](https://github.com/k0kubun/hamlit)

- Agiliza la construcción de formularios con Simple Form

Lecturas recomendadas

[GitHub - heartcombo/simple_form: Forms made easy for Rails! It's tied to a simple DSL, with no opinion on markup.](https://github.com/heartcombo/simple_form)


[Convert HTML to HAML](https://htmltohaml.com/)

- 

```
rails g scaffold User first_name:string last_name:string description:string addres:string about_me:text age:integer
```