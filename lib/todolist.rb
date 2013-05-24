class TodoList
  attr_reader :list, :file

  def initialize(file="")
    @file = file
    @list = []

    if File.exist? @file
      File.open @file  do |f| 
        f.each { |line| @list << line.chomp }
      end
    end
  end

  def add(item, pos)
    @list << item if pos.nil?
    if pos == 0 or pos.downcase == 'title'
      @list[0] = item
    else
      @list.insert(pos, item)
    end
  end

  def delete(pos)
    @list.pop if pos.nil?
    @list.delete_at(pos)
  end

  def save
    File.open(@file, 'w') do |f|
      @list.each { |item| f.puts item }
    end
  end

end