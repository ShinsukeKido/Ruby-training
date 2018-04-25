require './chapter-8/deep_freeze.rb'

class Team
  extend DeepFreeze

  COUNTRIES = deep_freeze(%w[Japan US India])
end
