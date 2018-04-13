def regular_exp(old)
  old.gsub(/:(\w+) *=> */ , '\1: ')
end
