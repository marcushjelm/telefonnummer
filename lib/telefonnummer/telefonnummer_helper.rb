module Telefonnummer
  module TelefonnummerHelper
    PREFIX_REGEXP = %w(11 13 16 18 19 21 23 26 31 33 35 36 40 42 44 46 54 60 63 8 90 70 72 73 76).join('|')
  
    def telefonnummer_to_human(telefonnummer)
      return telefonnummer if (telefonnummer =~ /\D/) || (telefonnummer.size < 5) || (telefonnummer.size > 10)
      
      prefix, suffix = 
      if telefonnummer[0] == '0'
        if telefonnummer =~ /\A0(#{PREFIX_REGEXP})/
          [Regexp.last_match(0), telefonnummer[Regexp.last_match(0).size..-1]]
        else
          [telefonnummer[0..3], telefonnummer[4..-1]]
        end
      else
        [nil, telefonnummer]
      end
  
      # suffix format
      tmp = []
      if suffix.size.odd?
        tmp << suffix[0..2]
        suffix = suffix[3..-1]
      end
      0.step(suffix.size-1, 2) { |i| tmp << suffix[i..i+1] } if suffix
      suffix = tmp.join(' ')
  
      # telefonnummer format
      tmp = []
      tmp << prefix if prefix
      tmp << suffix
      tmp.join('-')
    end
  end
end
