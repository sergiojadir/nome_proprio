require "nome_proprio/version"
require 'active_support/concern'

module NomeProprio
	extend ActiveSupport::Concern
	
  def self.included(base)
		def nome=(nome)
    	super(nome = nome_proprio(nome))
  	end

  	def nome_proprio(nome)
			nome.mb_chars.titleize.to_s.gsub(/ D(a|e|o|as|os) /, ' d\1 ').gsub(/ E /, ' e ')
		end
	end
end
