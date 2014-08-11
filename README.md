# NomeProprio

Gem para facilitar a gravação de atributos no formato de nome próprio.

## Installation

Add this line to your application's Gemfile:

    gem 'nome_proprio'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nome_proprio

## Usage

class User < ActiveRecord::Base

	nome_proprio :nome, :sobrenome
	
end

user = User.new

user.first_name = "jonh"

user.last_name = "doe"

user.save!

user = User.first

user.first_name #-> "Jonh"

user.last_name #-> "Doe"

## Contributing

1. Fork it ( https://github.com/[my-github-username]/nome_proprio/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
