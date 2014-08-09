module ActiveRecord
	module NomeProprio
		extend ActiveSupport::Concern

		module ClassMethods
			def nome_proprio(*args)
				args.each do |method|
					define_method "#{method}=" do |arg|
						super(arg=gera_nome_proprio(arg))
					end
				end
			end
		end

		def gera_nome_proprio(nome)
			nome.mb_chars.titleize.to_s.gsub(/ D(a|e|o|as|os) /, ' d\1 ').gsub(/ E /, ' e ')
		end

	end

	class Base
		include NomeProprio
	end
end