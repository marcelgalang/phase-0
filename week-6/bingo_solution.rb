# # Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end


  def call
    @letter = ['B','I','N','G','O'].sample
    @number = rand(1..100)
  end


  def check
    call
    p @letter
    p @number
    board = @bingo_board

    b=[]
    b<< board.map{|col| col[0]}
    i=[]
    i<<board.map{|col| col[1]}
    n=[]
     n<<board.map{|col| col[2]}
    g=[]
     g<<board.map{|col| col[3]}
    o=[]
     o<<board.map{|col| col[4]}

    if @letter == 'B' && b.include?(@number)
      @bingo_board.collect! { |i| i.include?(@number) ? (i[i.index(@number)] = 'X'; i) : i }
    elsif @letter== 'I' && i.include?(@number)
      @bingo_board.collect! { |i| i.include?(@number) ? (i[i.index(@number)] = 'X'; i) : i }
    elsif @letter =='N' && n.include?(@number)
      @bingo_board.collect! { |i| i.include?(@number) ? (i[i.index(@number)] = 'X'; i) : i }
    elsif @letter =='G' && g.include?(@number)
      @bingo_board.collect! { |i| i.include?(@number) ? (i[i.index(@number)] = 'X'; i) : i }
    else @letter == 'O' && o.include?(@number)
      @bingo_board.collect! { |i| i.include?(@number) ? (i[i.index(@number)] = 'X'; i) : i }
    end
  end
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check.map { |block| puts block.inspect }

=begin
Reflection
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
It was difficult and time consuming.  Not only does my style need improvement but also my understanding of what is doable.  That is where the disconnect often was.

What are the benefits of using a class for this challenge?
You need a class to have instance variables that can travel past methods.
How can you access coordinates in a nested array?
Iterate through both dimensions or call both indices.
What methods did you use to access and modify the array?
I iterated with #map and #collect
How did you determine what should be an instance variable versus a local variable?
Do you need it outside of the current method?  That is my test.
What do you feel is most improved in your refactored solution?
I  ran out of time and wish I refactored the method check more.
=end