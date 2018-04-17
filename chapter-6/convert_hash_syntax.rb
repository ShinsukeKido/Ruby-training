def convert_hash_syntax(old)
  old.gsub(/:(\w+) *=> */ , '\1: ')
end
