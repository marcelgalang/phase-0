class Test
def initialize(labels)
    @labels=labels
    args = labels
    args = method(__method__).parameters.map { |arg| arg[1] }
p arg

    # if args == 1
    #   raise ArgumentError.new("Invalid Arguement number")#single argument
    # end
    end
end
test = Test.new(["A"])