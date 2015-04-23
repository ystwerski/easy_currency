require "easy_currency/version"
require 'unirest'

module EasyCurrency
  
  class ExchangeRate

  	def initialize(currency_name)
  		@exchange_rates = Unirest.get("http://api.fixer.io/latest?base=#{currency_name}").body
  		@base_rate = @exchange_rates["base"]
  		return @base_rate
  	end

  	def change_base_rate(currency_name)
  		@exchange_rates = Unirest.get("http://api.fixer.io/latest?base=#{currency_name}").body
  		@base_rate = @exchange_rates["base"]
  		return @base_rate
  	end

  	def rate_for(currency_name)
  		@rate = @exchange_rates["rates"][currency_name]
  		return @rate
  	end

  	def options_for_base
  		@options = []
  		@exchange_rates["rates"].each do |name, rate|
  			@options << name
  		end
  		return @options.join(" | ")
  	end

  	def base_rate
  		return @base_rate
  	end

  	def self.options
  		options = Unirest.get("http://api.fixer.io/latest?").body["rates"]
  		all_options = []
  		options.each do |option, option_rate|
  			all_options << option
  		end
  		all_options << "EUR"
  		all_options = all_options.sort
  		return all_options.join(" | ")
	  end




  end

end
