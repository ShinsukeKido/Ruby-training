require './chapter-8/deep_freeze.rb'

class Bank
  extend DeepFreeze
  CURRENCIES = deep_freeze('Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee')
end
