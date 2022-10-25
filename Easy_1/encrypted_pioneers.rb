ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

def decryption(name)
  lowercase_letters = ('a'..'z').to_a
  uppercase_letters = ("A".."Z").to_a
  name_array = name.split('')
  decrypted_name = []
  
  name_array.each do |letter|
    if lowercase_letters.include?(letter)
      index = lowercase_letters.index(letter) - 13
      decrypted_name << lowercase_letters[index]
    elsif uppercase_letters.include?(letter)
      index = uppercase_letters.index(letter) - 13
      decrypted_name << uppercase_letters[index]
    else
      decrypted_name << letter
    end
  end
  
  decrypted_name.join()
end

ENCRYPTED_PIONEERS.each { |name| puts decryption(name) }
