# hatchAPI
This is a server-side API built with Ruby on Rails for a front-end ReactJS project called Hatch. 
Follow this [link](https://github.com/joeykishiuchi/hatch) to see the front-end application set-up.

This server is hosted on heroku at this link:
[https://hatch-server-api.herokuapp.com/](https://hatch-server-api.herokuapp.com/)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Dependencies

- Ruby v2.3.5
- Rails v4.2.6
- Active Record
- HTTParty
- PostgreSQL v0.15
- rack-cors

## Collaborators
[Stacey Keating](https://github.com/staceykeating/)
[Jyoti Khabra](https://github.com/jyotikhabra)
[Joey Kishiuchi](https://github.com/joeykishiuchi)