class TodoList

  def initialize(file="")
    @file = file
    @list = []

    if File.exist? @file
      File.open @file  do |f| 
        f.each { |line| @list << line.chomp }
      end
    end
  end

  def display
    
  end
  
end