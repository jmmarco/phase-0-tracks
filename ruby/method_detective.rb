# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# Note: Added additional call for each method to test output

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
"aWESOMe".swapcase

"zom".insert(1, "o")
# => “zoom”
"develop".insert(-1, "er")

"enhance".center(14)
# => "    enhance    "
"emergency".center(18)

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
"tacos are great!".upcase

"the usual".concat(" suspects")
#=> "the usual suspects"
"insta".concat("gram")

" suspects".prepend("the usual")
# => "the usual suspects"
" power".prepend("knowledge is")

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
"the last of us".chop

"The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"
"The first letter should be missing".reverse.chop.reverse
