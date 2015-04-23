# EasyCurrency

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'easy_currency'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easy_currency

## Usage

Using easy_currency:

Using easy_currency is crazy simple, since the whole gem is a pretty simple gem in the first place.

To create a new object, you gotta do 

	$ your_variable = EasyCurrency::ExchangeRate.new("whatever_currency_you_want_to_be_the_base_rate")

The Base Rate is the currency that you want to start comparing to all the other different types of currencies. For example, if you wanted to know how many GBP (Great British Pounds) you can get for your USD (United States Dollar), the USD would be your base rate, and GBP along with any other currency would be your non-base rate (don't know if that is what they are actually called, but you get what I mean).

For a list of all rates that you can choose from to make them a base or non-base rate, just do 

	$ EasyCurrency::ExchangeRate.options

Now that you have your_variable, which contains whatever base rate you assigned it to, you can do

	$ your_variable.rate_for(non_base_rate)

This will return you the current exchange rate between the two currencies. Your base rate and your non-base rate. Basically, how much non-base rate currency you will get, today, with 1 unit of your base currency. (If there is someone out there who wants to put that in better words, please feel free to do so).

At any time, you can check what you chose for your base rate by doing

	$ your_variable.base_rate?

And finally, let's say you are just sick and tired of the base rate you chose. You can switch your current base rate to another by doing

	$ your_new_and_improved_totaly_awesome_base_rate_variable = your_variable.change_base_rate("whatever_you_want_the_new_totaly_awesome_base_rate_to_be")

REMEMBER. VERY IMPORTANT. 
Whenever you put any rate into any parameter - always make the rate capital letters and always make it into a string!!!!

	$ ("USD") ("GBP") ("EUR") ("ILS")

Thanks for using easy_post. If you have any questions, compliments, constructive critisism, or you just wanna chat, you can send me an email at ystwerski@gmail.com

If you have any non-constructive critisism, send it to ystwerski@yahoo.com. (No offense Yahoo. That's just how things ended up).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/easy_currency/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
