require './chapter-8/deep_freeze.rb'

class Team
  extend DeepFreeze

  COUNTRIES = deep_freeze(['Japan', 'US', 'India'])
end
