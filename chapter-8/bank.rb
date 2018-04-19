require './chapter-8/deep_freeze.rb'

class Bank
  extend DeepFreeze
# freezeメソッドに関するテストを行うため、ハッシュのキー、バリューは共にミュータブルである文字列を採用。
  CURRENCIES = deep_freeze({'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'})
end
