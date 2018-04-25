def to_hex(red, green, blue)
  [red, green, blue].inject('#') { |hex, i| hex + i.to_s(16).rjust(2, '0') }
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r, g, b].map(&:hex)
end
