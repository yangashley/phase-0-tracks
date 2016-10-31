# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".replace “InVeStIgAtIoN”
"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(2, 'o')
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
"Stop! You’re under arrest!".replace "STOP! YOU’RE UNDER ARREST!"
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".insert(-1, ' suspects')
"the usual".insert(9, " suspects")
"the usual" << " suspects"
#=> "the usual suspects"

" suspects".prepend("the usual")
" suspects".insert(0, "the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
"The case of the disappearing last letter".chomp("r")
"The case of the disappearing last letter"[0...-1]
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice("he mystery of the missing first letter")
"The mystery of the missing first letter"[1...-1]
"The mystery of the missing first letter".gsub(/T/, "")
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?) 
# 122 is the ASCII code for lowercase z

"How many times does the letter 'a' appear in this string?".count "a"
# => 4