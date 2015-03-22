require "easy_currency/version"

module EasyCurrency
  
  class Exchange_rate

  	def initialize(currency_1.upcase, currency_2.upcase)
  		@exchange_rates = Unirest.get("http://api.fixer.io/latest?base=#{currency_1}").body
  		@rate = @exchange_rates["rates"]["#{currency_2}"]
  		return @rate
  	end

  	def rate
  		return @rate
  	end

  	def self.options
		options = Unirest.get("http://api.fixer.io/latest?").body["rates"]
		@options = []
		options.each do |option, option_rate|
			@options << option
		end
		@options << "EUR"
		@options = @options.sort
		return "These are your currency options. #{@options}. Please cmd: Exchange_rate.new(one_of_your_options, the_other_one_of_your_options) to get the rate of how much options 2's will option 1 buy you."
	end




  end

end
