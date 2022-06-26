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