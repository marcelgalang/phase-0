input = integer to convert to words
output= word version of integer

steps
1. convert integer to string
2. split string into characters and set in array
3. create a sorter method to determine array length and the appropririate converter methods that will be applied
  -how long is the array?
  select methods to apply
  -this outputs answer.
4. Create range methods for singles, teens, 20-90s, hundreds etc

pseudocode

range method examples
method 1 -when array index is the last one have "1" return "one", "2" return "two" ..."9" return "nine"
method 2 -when array index is the second to last one have "2" return "twenty", "3" return "thirty" etc

sorter method
  if array length is 1 character long perform arrray method one to it
    if array length is 2 characters long perform both method 1 and method 2 to it

# initial solution

class NumWords

  def initalize

  end

  def sort(num)
    if a.lenth = 1
      return num.digits
    elsif a.lenth = 2
      return num.teens
    elsif a.lenth = 3
      return num.twenty_ninety
    elsif a.lenth = 4
      return num.hundreds
    elsif a.lenth = 5
      return num.thousands
    elsif a.lenth = 6
      return num.millions
    elsif a.lenth = 7
      return num.billions
    elsif a.lenth = 8
      return num.trillions
    elsif a.lenth = 9
      return num.quadrillion
  end

  def digits
    if a[-1]=="1"
      return "one"
    elsif a[-1]=="2"
      return "two"
    elsif a[-1]=="3"
      return "three"
    elsif a[-1]=="4"
      return "four"
    elsif a[-1]=="5"
      return "five"
    elsif a[-1]=="6"
      return "six"
    elsif a[-1]=="7"
      return "seven"
    elsif a[-1]=="8"
      return "eight"
    elsif a[-1]=="9"
      return "nine"
    else a[-1]=="0"
      return "zero"
  end

  def teens
    if a[-2]=="1"&& a[-1]=="0"
      return "ten"
    elsif a[-2]=="1"&& a[-1]=="1"
      return "eleven"
    elsif a[-2]=="1"&& a[-1]=="2"
      return "twelve"
    elsif a[-2]=="1"&& a[-1]=="3"
      return "thirteen"
    elsif a[-2]=="1"&& a[-1]=="5"
      return "fifteen"
    elsif a[-1]=="4"&& a[-2]=="1"
      return "fourteen"
    elsif a[-1]=="6"&& a[-2]=="1"
      return "sixteen"
    elsif a[-1]=="7"&& a[-2]=="1"
      return "seventeen"
    elsif a[-1]=="8"&& a[-2]=="1"
      return "eighteen"
    elsif a[-1]=="9" & a[-2]=="1"
      return "nineteen"
    else twenty_to_ninety
  end

  def twenty_to_ninety
    if a[-2]=="2"
      return "twenty" +


end

