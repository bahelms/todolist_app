class TodoList

  def initialize(file)
    @list = []
    File.open(file) do |f| 
      f.each { |line| @list << line.chomp }
    end
  end
  
end