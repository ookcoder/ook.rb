mode = ARGV[0]
text = ARGV[1]

def encode(text, map)
  text.chars.map do |character| map[character.downcase] end.to_a.join("0") + "k"
end

def decode(text, map)
  text[0, text.length - 1].split("0").map do |ook| map[ook] end.to_a.join("")
end

forward = {
  "a" => "oO",
  "b" => "Oooo",
  "c" => "OoOo",
  "d" => "Ooo",
  "e" => "o",
  "f" => "ooOo",
  "g" => "OOo",
  "h" => "oooo",
  "i" => "oo",
  "j" => "oOOO",
  "k" => "OoO",
  "l" => "oOoo",
  "m" => "OO",
  "n" => "Oo",
  "o" => "OOO",
  "p" => "oOOo",
  "q" => "OOoO",
  "r" => "oOo",
  "s" => "ooo",
  "t" => "O",
  "u" => "ooO",
  "v" => "oooO",
  "w" => "oOO",
  "x" => "OooO",
  "y" => "OoOO",
  "z" => "OOoo",
  "0" => "OOOOO",
  "1" => "oOOOO",
  "2" => "ooOOO",
  "3" => "oooOO",
  "4" => "ooooO",
  "5" => "ooooo",
  "6" => "Ooooo",
  "7" => "OOooo",
  "8" => "OOOoo",
  "9" => "OOOOo",
  " " => "k "
}

backward = forward.invert

if mode == "decode"
  p decode text, backward
else
  p encode text, forward
end
