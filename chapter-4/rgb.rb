def to_hex(r, g, b)
  [r, g, b].inject('#') { |hex, i| hex + i.to_s(16).rjust(2, '0')}
end

def to_ints(hex)
  [hex[1..2], hex[3..4], hex[5..6]].map { |s| s.hex }
end
